import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:xml/xml.dart' as xml;
import '../read_quran/quran_aya.dart';
import '../read_quran/quran_sura.dart';
import '../read_quran/sura_details.dart';

class DataParser {
  static Future<List<SuraDetails>> loadQuranMetaData() async {
    try {
      final jsonData = await rootBundle.loadString('assets/metadata.json');
      final jsonMap = json.decode(jsonData);
      final suraDetailsList = jsonMap['chapters'];

      //print('Number of Sura Details: ${suraDetailsList.length}');

      List<SuraDetails> suraDetailsObjects = [];

      for (var suraDetails in suraDetailsList) {
        suraDetailsObjects.add(SuraDetails.fromJson(suraDetails));
      }

      return suraDetailsObjects;
    } catch (e) {
      debugPrint('Error loading or parsing JSON: $e');
      return [];
    }
  }

  static Future<xml.XmlDocument> readDocument(String xmlFileName) async {
    if (xmlFileName == 'quran' || xmlFileName == 'en.sahih') {
      final xmlString =
      await rootBundle.loadString('assets/quran_db/$xmlFileName.xml');
      return xml.XmlDocument.parse(xmlString);
    } else {
      final xmlString = await readFileFromDevicePath(xmlFileName);
      return xml.XmlDocument.parse(xmlString);
    }
  }

  static Future<String> readFileFromDevicePath(String fileName) async {
    try {
      final appDocDir = await getApplicationDocumentsDirectory();
      final assetFile =
      File('${appDocDir.path}/assets/translations/$fileName.xml');

      final content = await assetFile.readAsString();
      return content;
    } catch (e) {
      debugPrint("Error reading the file: $e");
    }
    return '';
  }

  static Future<List<QuranSura>> loadXmlFromAssets(
      String xmlFileName,
      ) async {
    List<QuranSura> suras = [];

    final document = await readDocument(
      xmlFileName,
    );

    for (var suraElement in document.findAllElements('sura')) {
      final suraIndex = int.parse(suraElement.getAttribute('index')!);
      final ayas = <QuranAya>[];

      for (var ayaElement in suraElement.findElements('aya')) {
        final ayaIndex = int.parse(ayaElement.getAttribute('index')!);
        final sura = suraIndex;
        final ayaText = ayaElement.getAttribute('text');
        ayas.add(QuranAya(suraIndex: sura, ayaIndex: ayaIndex, ayaNumberList: '$ayaIndex', text: ayaText!));
      }

      suras.add(QuranSura(suraIndex, ayas));
    }

    return suras;
  }
}
