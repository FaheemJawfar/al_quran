import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import '../app_config/color_config.dart';
import '../common_widgets/liquid_progress/liquid_circular.dart';
import '../common_widgets/loading_indicator.dart';
import '../providers/quran_provider.dart';
import '../translation/translation.dart';

class DownloadProgressPopup extends StatefulWidget {
  final String fileName;
  final void Function() onComplete;

  const DownloadProgressPopup({super.key,
    required this.fileName,
    required this.onComplete,
  });

  @override
  State<DownloadProgressPopup> createState() => _DownloadProgressPopupState();
}

class _DownloadProgressPopupState extends State<DownloadProgressPopup> {
  int _receivedFileSize = 0;
  int _totalFileSize = -1;
  late final quranProvider = Provider.of<QuranProvider>(context, listen:false);
  @override
  void initState() {
    super.initState();
    _downloadAndSaveAsset(widget.fileName);
  }

  Future<void> _downloadAndSaveAsset(String fileName) async {
 //   await getFileSize();
    Dio dio = Dio();
    try {
      final appDocDir = await getApplicationDocumentsDirectory();
      final fileSavePath = '${appDocDir.path}/assets/translations/$fileName.xml';

      await dio.download(
        'https://alqurandb-api.onrender.com/download/$fileName.xml',
        fileSavePath,
        options: Options(
          headers: {HttpHeaders.acceptEncodingHeader: '*'}, // Disable gzip
        ),
        onReceiveProgress: (received, total) {
          if (total == 0) return;

          setState(() {
            _receivedFileSize = received;
            _totalFileSize = total;
          });
          // print('total $total');
          // print('received $received');
        },

      );

      quranProvider.selectedTranslation = widget.fileName;
      if(!mounted) return;
      widget.onComplete();
    } catch (e) {
      debugPrint("Error downloading asset: $e");
    }
  }



  // getFileSize() async {
  //   const itemIdentifier = 'quran-translation-files';
  //   final fileName = '${widget.fileName}.xml';
  //   const apiUrl = 'https://archive.org/metadata/$itemIdentifier';
  //
  //   try {
  //     final response = await HttpClient().getUrl(Uri.parse(apiUrl));
  //     final httpResponse = await response.close();
  //
  //     if (httpResponse.statusCode == 200) {
  //       final jsonStr = await httpResponse.transform(utf8.decoder).join();
  //       final jsonData = jsonDecode(jsonStr);
  //
  //       final files = jsonData['files'];
  //
  //       for (var file in files) {
  //         if (file['name'] == fileName) {
  //           final fileSize = file['size'];
  //           setState(() {
  //             _totalFileSize = int.parse(fileSize);
  //           });
  //           break;
  //         }
  //       }
  //     } else {
  //       debugPrint('HTTP Request failed with status code ${httpResponse.statusCode}');
  //     }
  //   } catch (e) {
  //     debugPrint('Error: $e');
  //   }
  // }


  String getProgressPercentage(){
    return '${(_receivedFileSize / _totalFileSize * 100).floor()}%';
  }

  String convertBytesToKBMB(int bytes) {
    if (bytes < 1024) {
      return '$bytes B';
    } else if (bytes < 1048576) {
      int kb = bytes ~/ 1024;
      return '$kb KB';
    } else {
      double mb = bytes / 1048576;
      return '${mb.toStringAsFixed(2)} MB';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Downloading Translation \n${Translation.findTranslationByFileName(widget.fileName).nameInLanguage}', textAlign: TextAlign.center,),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _totalFileSize == -1 ? LoadingIndicator(color: ColorConfig.primaryColor,size: 40,) :
          Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: LiquidCircularProgressIndicator(
                  value: _receivedFileSize / _totalFileSize,
                  valueColor: AlwaysStoppedAnimation(ColorConfig.primaryColor),
                  backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                  borderColor: ColorConfig.backgroundColor,
                  borderWidth: 5.0,
                  direction: Axis.vertical,
                  center: Text(getProgressPercentage(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              const SizedBox(height: 16.0),
              Text('Downloaded: ${convertBytesToKBMB(_receivedFileSize)} / ${convertBytesToKBMB(_totalFileSize)}'),
            ],
          ),
        ],
      ),
    );
  }
}

void showDownloadProgress(BuildContext context, String fileName) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return DownloadProgressPopup(fileName: fileName,onComplete: () {
        Navigator.pop(context);
      },);
    },
  );
}


