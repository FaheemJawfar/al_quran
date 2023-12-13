import 'dart:io';
import 'package:path_provider/path_provider.dart';

class AssetsHandler {

  static Future<bool> doesAssetExist(String fileName) async {

    try {
      final appDocDir = await getApplicationDocumentsDirectory();
      final assetFile = File('${appDocDir.path}/assets/translations/$fileName.xml');

      if (await assetFile.exists()) {
        return true;
      }
    } catch (e) {
     // print("Asset does not exist: $e");
      return false;
    }
    return false;
  }
}