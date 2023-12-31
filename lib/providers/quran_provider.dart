import 'package:flutter/material.dart';
import '../translation/translation.dart';
import '/app_config/app_config.dart';
import '../app_config/color_config.dart';
import '../bookmarks/bookmark.dart';
import '../bookmarks/bookmark_helper.dart';
import '../read_quran/quran_helper.dart';
import '../utils/data_parser.dart';
import '../utils/shared_preferences.dart';
import '../read_quran/quran_sura.dart';
import '../read_quran/quran_aya.dart';
import '../quran_audio/reciter.dart';

class QuranProvider extends ChangeNotifier {
  //Onboarding
  String? onboardSelectedLanguage;
  String? onboardSelectedTranslation;

  bool _isDarkMode = false;

  bool get isDarkMode => AppPreferences.getBool('isDarkMode') ?? _isDarkMode;

  set isDarkMode(bool value) {
    AppPreferences.setBool('isDarkMode', value);
    _isDarkMode = value;
    notifyListeners();
  }

  ThemeData get quranTheme =>
      isDarkMode ? ColorConfig.quranDarkTheme : ColorConfig.quranLightTheme;

  String _selectedTranslation = AppConfig.defaultTranslation;



  List<String> arabicFontsList = const [
    'AlQalam',
    'PDMS_Saleem',
    'Arabic',
    'MeezanUni',
    'Uthmani',
    'UthmanicScript'
  ];



  String get selectedTranslation =>
      AppPreferences.getString('selectedTranslation') ?? _selectedTranslation;

  set selectedTranslation(String value) {
    AppPreferences.setString('selectedTranslation', value);
    AppPreferences.setString('selectedLanguage', Translation.findTranslationByFileName(value).language);
    _selectedTranslation = value;
    loadTranslation();
    isTranslationRtl = Translation.findTranslationByFileName(selectedTranslation).isRtl;
    notifyListeners();
  }

  bool get isTranslationRtl => AppPreferences.getBool('isTranslationRtl') ?? false;

  set isTranslationRtl(bool value) {
    AppPreferences.setBool('isTranslationRtl', value);
  }

 // String get selectedTranslationName => translations[selectedTranslation] ?? '';

  List<QuranSura> _allSurasTamil = [];

  get allSurasTamil => _allSurasTamil;

  List<QuranSura> _allSurasArabic = [];

  get allSurasArabic => _allSurasArabic;

  loadTranslation() async {
    _allSurasTamil = await DataParser.loadXmlFromAssets(selectedTranslation);
    notifyListeners();
  }

  loadQuranArabic() async {
    _allSurasArabic = await DataParser.loadXmlFromAssets('quran');
    notifyListeners();
  }

  int _selectedSuraNumber = 0;

  int get selectedSuraNumber => _selectedSuraNumber;

  set selectedSuraNumber(int value) {
    _selectedSuraNumber = value;
    notifyListeners();
  }

  QuranAya get bismillahArabic {
    QuranAya bismillah = QuranAya(
        suraIndex: 0,
        ayaIndex: 0,
        text: _allSurasArabic[0].listOfAyas[0].text,
        ayaNumberList: '0');
    return bismillah;
  }

  QuranAya get bismillahTranslation {
    QuranAya bismillah = QuranAya(
        suraIndex: 0,
        ayaIndex: 0,
        text: _allSurasTamil[0].listOfAyas[0].text,
        ayaNumberList: '0');
    return bismillah;
  }

  bool get isPJMode =>
      selectedTranslation == 'pj' || selectedTranslation == 'tntj';

  List<QuranAya> get selectedSuraTranslation {
    List<QuranAya> content = [];
    if (_selectedSuraNumber != 1 && _selectedSuraNumber != 9) {
      content.add(bismillahTranslation);
    }
    content.addAll(_allSurasTamil[_selectedSuraNumber - 1].listOfAyas);
    return content;
  }

  List<QuranAya> get selectedSuraArabic {
    List<QuranAya> content = [];
    if (_selectedSuraNumber != 1 && _selectedSuraNumber != 9) {
      content.add(bismillahArabic);
    }
    content.addAll(_allSurasArabic[_selectedSuraNumber - 1].listOfAyas);
    return content;
  }

  List<QuranAya> get selectedSuraArabicForArabicOnlyScreen {
    List<QuranAya> content = [];

    content.addAll(_allSurasArabic[_selectedSuraNumber - 1].listOfAyas);
    return content;
  }

  QuranAya filterOneAyaArabic(int sura, int aya) {
    return _allSurasArabic[sura - 1].listOfAyas[aya - 1];
  }

  QuranAya filterOneAyaTranslation(int sura, int aya) {
    return _allSurasTamil[sura - 1].listOfAyas[aya - 1];
  }

  QuranAya filterOneAyaTranslationFromSearch(int sura, int aya) {
    return _allSurasTamil[sura - 1].listOfAyas.firstWhere((element) => element
        .ayaNumberList
        .split(',')
        .map((str) => int.parse(str))
        .toList()
        .contains(aya));
  }

  TextSpan getArabicAyaListFromTranslation(
      QuranAya quranAya, double desiredArabicFontSize) {
    List<int> intList =
        quranAya.ayaNumberList.split(',').map((str) => int.parse(str)).toList();

    List<InlineSpan> spans = [];

    for (int ayaNumber in intList) {
      spans.add(
        TextSpan(
          text: filterOneAyaArabic(quranAya.suraIndex, ayaNumber).text,
          style: TextStyle(
            fontSize: desiredArabicFontSize,
            fontFamily: arabicFont,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      );
      spans.add(
        TextSpan(
          text: '${QuranHelper.getVerseEndSymbol(ayaNumber)} ',
          style: TextStyle(
            fontSize: 18,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      );
    }

    return TextSpan(children: spans);
  }

  String _translationFont = AppConfig.appDefaultFont;

  String get translationFont => AppPreferences.getString('translationFont') ?? _translationFont;

  set translationFont(String value) {
    AppPreferences.setString('translationFont', value);
    _translationFont = value;
    notifyListeners();
  }

  String _arabicFont = AppConfig.defaultArabicFont;

  String get arabicFont =>
      AppPreferences.getString('arabicFont') ?? _arabicFont;

  set arabicFont(String value) {
    AppPreferences.setString('arabicFont', value);
    _arabicFont = value;
    notifyListeners();
  }

  double _translationFontSize = AppConfig.defaultTranslationFontSize;

  double get translationFontSize =>
      AppPreferences.getDouble('translationFontSize') ?? _translationFontSize;

  set translationFontSize(double value) {
    AppPreferences.setDouble('translationFontSize', value);
    _translationFontSize = value;
    notifyListeners();
  }

  double _arabicFontSize = AppConfig.defaultArabicFontSize;

  double get arabicFontSize =>
      AppPreferences.getDouble('arabicFontSize') ?? _arabicFontSize;

  set arabicFontSize(double value) {
    AppPreferences.setDouble('arabicFontSize', value);
    _arabicFontSize = value;
    notifyListeners();
  }

  String _selectedReciter = AppConfig.defaultReciter;

  String get selectedReciter =>
      AppPreferences.getString('selectedReciter') ?? _selectedReciter;

  set selectedReciter(String value) {
    AppPreferences.setString('selectedReciter', value);
    _selectedReciter = value;
    notifyListeners();
  }

  String get selectedLanguage =>
      AppPreferences.getString('selectedLanguage') ?? AppConfig.defaultLanguage;


  List<Reciter> get allReciters {
    return Reciter.recitersJsonList
        .map((json) => Reciter.fromJson(json))
        .toList();
  }

  Reciter get selectedReciterDetails {
    return allReciters
        .firstWhere((reciter) => reciter.identifier == selectedReciter);
  }

  List<Bookmark> _bookmarkList = BookmarkHelper.getBookmarkList();

  get bookmarkList => _bookmarkList;

  addBookmark(Bookmark bookmark, BuildContext context) {
    BookmarkHelper.addBookmark(bookmark, context);
    _bookmarkList = BookmarkHelper.getBookmarkList();
    notifyListeners();
  }

  deleteBookmark(Bookmark bookmark, BuildContext context) {
    BookmarkHelper.deleteBookmark(bookmark, context);
    _bookmarkList = BookmarkHelper.getBookmarkList();
    notifyListeners();
  }

  void clearSettings() {
    translationFont = AppConfig.appDefaultFont;
    arabicFont = AppConfig.defaultArabicFont;
    translationFontSize = AppConfig.defaultTranslationFontSize;
    arabicFontSize = AppConfig.defaultArabicFontSize;
    //selectedTranslation = AppConfig.defaultTranslation;
    selectedReciter = AppConfig.defaultReciter;
    isDarkMode = false;
  }
}
