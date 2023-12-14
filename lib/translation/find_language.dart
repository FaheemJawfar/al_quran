class FindLanguage {
  String detectLanguage(String text) {
    final languages = {
      'ta': RegExp(r'[\u0b80-\u0bff]'), // Tamil
      'si': RegExp(r'[\u0d80-\u0dff]'), // Sinhala
      'sq': RegExp(r'[ëçdhgjklmnopqrstuvxyzäáéíóúÁÉÍÓÚ]'), // Albanian
      'zgh': RegExp(r'ⴰⵅⵇⵉⵕⵛⵟⵧⵯ⵵⵻⵽ⵉⵕⵛⵟⵧⵯ⵵⵻⵽'), // Amazigh
      'ar': RegExp(r'[\u0600-\u06ff]'), // Arabic
      'am': RegExp(r'[\u1200-\u137f]'), // Amharic
      'az': RegExp(r'[\u0480-\u04ff]'), // Azerbaijani
      'bn': RegExp(r'[\u0980-\u09ff]'), // Bengali
      'bs': RegExp(r'[\u0100-\u01ff]'), // Bosnian
      'bg': RegExp(r'[\u0400-\u04ff]'), // Bulgarian
      'zh': RegExp(r'[\u4e00-\u9fff]'), // Chinese (simplified)
      'cs': RegExp(r'[\u0100-\u029f]'), // Czech
      'dv': RegExp(r'[\u0900-\u095f]'), // Divehi
      'nl': RegExp(r'[\u0061-\u007a\u0041-\u005a\u00e1-\u00f1\u00f6-\u00ff]'), // Dutch
      'en': RegExp(r'[a-zA-Z]+'), // English
      'fr': RegExp(r'[\u0061-\u007a\u00c0-\u00ff]'), // French
      'de': RegExp(r'[\u0061-\u007a\u00c4-\u00ff]'), // German
      'ha': RegExp(r'[\u0600-\u065f]'), // Hausa
      'hi': RegExp(r'[\u0900-\u097f]'), // Hindi
      'id': RegExp(r'[\u0061-\u007a\u0068-\u0079\u00e1-\u00f1\u00e6-\u00f6\u00f9-\u00fe]'), // Indonesian
      'it': RegExp(r'[\u0061-\u007a\u00c0-\u00ff]'), // Italian
      'ja': RegExp(r'[\u3040-\u309f\u30a0-\u30ff\u3400-\u4dbf]'), // Japanese
      'ko': RegExp(r'[\uac00-\ud7af\u1100-\u11ff]'), // Korean
      'ku': RegExp(r'[\u0600-\u065f]'), // Kurdish (simplified pattern)
      'ms': RegExp(r'[\u0061-\u007a\u00e6-\u00f6\u00f9-\u00fe]'), // Malay
      'ml': RegExp(r'[\u0d00-\u0d7f]'), // Malayalam
      'no': RegExp(r'[\u0061-\u007a\u00e6-\u00f6\u00f9-\u00fe]'), // Norwegian (Bokmål)
      'ps': RegExp(r'[\u0600-\u069f]'), // Pashto (simplified pattern)
      'fa': RegExp(r'[\u0600-\u06ff]'), // Persian (Farsi)
      'pl': RegExp(r'[\u0061-\u007a\u0100-\u017f]'), // Polish
      'pt': RegExp(r'[\u0061-\u007a\u00c0-\u00ff]'), // Portuguese (Brazilian)
      'ro': RegExp(r'[\u0061-\u007a\u0080-\u00ff]'), // Romanian
      'ru': RegExp(r'[\u0400-\u044f\u0450-\u04ff]'), // Russian
      'sd': RegExp(r'[\u0600-\u06ff]'), // Sindhi (simplified pattern)
      'so': RegExp(r'[\u0640-\u066f\u0600-\u069f]'), // Somali
      'es': RegExp(r'[\u0061-\u007a\u00c0-\u00ff]'), // Spanish
      'sw': RegExp(r'[\u0061-\u007a\u006b-\u007f\u00e0-\u00ff]'), // Swahili
      'sv': RegExp(r'[\u0061-\u007a\u00a0-\u00df\u00e0-\u00ff]'), // Swedish
      'tg': RegExp(r'[\u0440-\u044f\u0450-\u052f]'), // Tajik
      'tt': RegExp(r'[\u0400-\u044f\u0450-\u04ff]'), // Tatar (Cyrillic)
      'th': RegExp(r'[\u0e00-\u0e7f]'), // Thai
      'tr': RegExp(r'[\u0061-\u007a\u00c4-\u00ff\u011f-\u0131]'), // Turkish
      'ur': RegExp(r'[\u0600-\u069f\u0640-\u066f]'), // Urdu
      'uy': RegExp(r'[\u0600-\u06ff]'), // Uyghur (simplified pattern)
      'uz': RegExp(r'[\u0400-\u044f\u0450-\u04ff]'), // Uzbek (Cyrillic)
    };

    for (final languageCode in languages.keys) {
      if (languages[languageCode]!.hasMatch(text)) {
        return languageCode;
      }
    }

    // Fallback mechanism if no language detected
    return 'unknown';
  }
}
