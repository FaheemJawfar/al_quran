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


  static TextStyle getFontStyle(String selectedLanguage){
    print(selectedLanguage);


    if(selectedLanguage == 'Tamil'){
      return GoogleFonts.muktaMalar(

      );
    }

    else if(selectedLanguage == 'Arabic'){
      return GoogleFonts.notoSansArabic(

      );
    }

    return GoogleFonts.notoSans();

  }
}
