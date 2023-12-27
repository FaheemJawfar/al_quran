import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSelector {
  List<String> languages = [
    'Albanian',
    'Amazigh',
    'Arabic',
    'Amharic',
    'Azerbaijani',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Chinese',
    'Czech',
    'Divehi',
    'Dutch',
    'English',
    'French',
    'German',
    'Hausa',
    'Hindi',
    'Indonesian',
    'Italian',
    'Japanese',
    'Korean',
    'Kurdish',
    'Malay',
    'Malayalam',
    'Norwegian',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese',
    'Romanian',
    'Russian',
    'Sindhi',
    'Somali',
    'Spanish',
    'Swahili',
    'Swedish',
    'Tajik',
    'Tamil',
    'Tatar',
    'Thai',
    'Turkish',
    'Urdu',
    'Uyghur',
    'Uzbek'
  ];

  static TextStyle getFontStyle(String selectedLanguage) {
    print(selectedLanguage);
    switch (selectedLanguage) {
      case 'Albanian':
        return GoogleFonts.notoSans();
      case 'Amazigh':
        return GoogleFonts.notoSans();
      case 'Arabic':
        return GoogleFonts.notoSansArabic();
      case 'Amharic':
        return GoogleFonts.notoSansEthiopic();
      case 'Azerbaijani':
        return GoogleFonts.notoSans();
      case 'Bengali':
        return GoogleFonts.notoSansBengali();
      case 'Bosnian':
        return GoogleFonts.notoSans();
      case 'Bulgarian':
        return GoogleFonts.notoSans();
      case 'Chinese':
        return GoogleFonts.notoSansSc();
      case 'Czech':
        return GoogleFonts.notoSans();
      case 'Divehi':
        return GoogleFonts.notoSansThaana();
      case 'Dutch':
        return GoogleFonts.notoSans();
      case 'English':
        return GoogleFonts.notoSans();
      case 'French':
        return GoogleFonts.notoSans();
      case 'German':
        return GoogleFonts.notoSans();
      case 'Hausa':
        return GoogleFonts.notoSans();
      case 'Hindi':
        return GoogleFonts.notoSansDevanagari();
      case 'Indonesian':
        return GoogleFonts.notoSans();
      case 'Italian':
        return GoogleFonts.notoSans();
      case 'Japanese':
        return GoogleFonts.notoSansJp();
      case 'Korean':
        return GoogleFonts.notoSansNKo();
      case 'Kurdish':
        return GoogleFonts.notoSansArabic();
      case 'Malay':
        return GoogleFonts.notoSans();
      case 'Malayalam':
        return GoogleFonts.notoSansMalayalam();
      case 'Norwegian':
        return GoogleFonts.notoSans();
      case 'Pashto':
        return GoogleFonts.notoSansArabic();
      case 'Persian':
        return GoogleFonts.notoSansArabic();
      case 'Polish':
        return GoogleFonts.notoSans();
      case 'Portuguese':
        return GoogleFonts.notoSans();
      case 'Romanian':
        return GoogleFonts.notoSans();
      case 'Russian':
        return GoogleFonts.notoSans();
      case 'Sindhi':
        return GoogleFonts.notoSansArabic();
      case 'Somali':
        return GoogleFonts.notoSans();
      case 'Spanish':
        return GoogleFonts.notoSans();
      case 'Swahili':
        return GoogleFonts.notoSans();
      case 'Swedish':
        return GoogleFonts.notoSans();
      case 'Tajik':
        return GoogleFonts.notoSans();
      case 'Tamil':
        return GoogleFonts.notoSansTamil();
      case 'Tatar':
        return GoogleFonts.notoSans();
      case 'Thai':
        return GoogleFonts.notoSansThai();
      case 'Turkish':
        return GoogleFonts.notoSans();
      case 'Urdu':
        return GoogleFonts.notoSansArabic();
      case 'Uyghur':
        return GoogleFonts.notoSansArabic();
      case 'Uzbek':
        return GoogleFonts.notoSans();
      default:
        return GoogleFonts.notoSans();
    }
  }
}
