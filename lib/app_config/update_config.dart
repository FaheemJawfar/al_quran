
import '../translation/translation.dart';
import '../utils/shared_preferences.dart';

class UpdateAppConfig {


  static void setSelectedLanguage(){

    String? selectedTranslation = AppPreferences.getString('selectedTranslation');
    String? selectedLanguage = AppPreferences.getString('selectedLanguage');
    if(selectedTranslation != null && selectedLanguage == null){
      AppPreferences.setString('selectedLanguage', Translation.findTranslationByFileName(selectedTranslation).language);
    }
  }


}