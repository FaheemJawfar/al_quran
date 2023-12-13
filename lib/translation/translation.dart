class Translation {
  String language;
  bool isRtl;
  String nameInLanguage;
  String translator;
  String fileName;

  Translation({
    required this.language,
    required this.isRtl,
    required this.nameInLanguage,
    required this.translator,
    required this.fileName,
  });

  factory Translation.fromJson(Map<String, dynamic> json) =>
      Translation(
        language: json["language"],
        isRtl: json["isRtl"],
        nameInLanguage: json["nameInLanguage"],
        translator: json["translator"],
        fileName: json["fileName"],
      );

  Map<String, dynamic> toJson() =>
      {
        "language": language,
        "isRtl": isRtl,
        "nameInLanguage": nameInLanguage,
        "translator": translator,
        "fileName": fileName,
      };



  static Translation findTranslationByFileName(String fileNameToFind) {
    try {
      return allTranslations.firstWhere((translation) => translation.fileName == fileNameToFind);
    } catch (e) {
      throw Exception("Translation not found for fileName: $fileNameToFind");
    }
  }


  static String getTranslationDetails(Translation translation) {
    return '${translation.language} - ${translation.nameInLanguage}';
  }




  static List<Translation> allTranslations = metadata
      .map((json) => Translation.fromJson(json))
      .toList();



  static List<String> uniqueLanguages(){
    List<String> uniqueLanguages = [];

    for (var entry in metadata) {
      String language = entry["language"].toString();

      if (!uniqueLanguages.contains(language)) {
        uniqueLanguages.add(language);
      }
    }

    return uniqueLanguages;
  }


  static List<Map<String, dynamic>> findTranslationsByLanguage(String language) {
    return metadata
        .where((translation) => translation['language'] == language)
        .toList();
  }



  static final metadata = [
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Efendi Nahi",
      "translator": "Hasan Efendi Nahi",
      "fileName": "sq.nahi"
    },
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Feti Mehdiu",
      "translator": "Feti Mehdiu",
      "fileName": "sq.mehdiu"
    },
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Sherif Ahmeti",
      "translator": "Sherif Ahmeti",
      "fileName": "sq.ahmeti"
    },
    {
      "language": "Amazigh",
      "isRtl": false,
      "nameInLanguage": "At Mensur",
      "translator": "Ramdane At Mansour",
      "fileName": "ber.mensur"
    },
    {
      "language": "Arabic",
      "isRtl": true,
      "nameInLanguage": "تفسير الجلالين",
      "translator": "Jalal ad-Din al-Mahalli and Jalal ad-Din as-Suyuti",
      "fileName": "ar.jalalayn"
    },
    {
      "language": "Arabic",
      "isRtl": true,
      "nameInLanguage": "تفسير المیسر",
      "translator": "King Fahad Quran Complex",
      "fileName": "ar.muyassar"
    },
    {
      "language": "Amharic",
      "isRtl": false,
      "nameInLanguage": "ሳዲቅ & ሳኒ ሐቢብ",
      "translator": "Muhammed Sadiq and Muhammed Sani Habib",
      "fileName": "am.sadiq"
    },
    {
      "language": "Azerbaijani",
      "isRtl": false,
      "nameInLanguage": "Məmmədəliyev & Bünyadov",
      "translator": "Vasim Mammadaliyev and Ziya Bunyadov",
      "fileName": "az.mammadaliyev"
    },
    {
      "language": "Azerbaijani",
      "isRtl": false,
      "nameInLanguage": "Musayev",
      "translator": "Alikhan Musayev",
      "fileName": "az.musayev"
    },
    {
      "language": "Bengali",
      "isRtl": false,
      "nameInLanguage": "জহুরুল হক",
      "translator": "Zohurul Hoque",
      "fileName": "bn.hoque"
    },
    {
      "language": "Bengali",
      "isRtl": false,
      "nameInLanguage": "মুহিউদ্দীন খান",
      "translator": "Muhiuddin Khan",
      "fileName": "bn.bengali"
    },
    {
      "language": "Bosnian",
      "isRtl": false,
      "nameInLanguage": "Korkut",
      "translator": "Besim Korkut",
      "fileName": "bs.korkut"
    },
    {
      "language": "Bosnian",
      "isRtl": false,
      "nameInLanguage": "Mlivo",
      "translator": "Mustafa Mlivo",
      "fileName": "bs.mlivo"
    },
    {
      "language": "Bulgarian",
      "isRtl": false,
      "nameInLanguage": "Теофанов",
      "translator": "Tzvetan Theophanov",
      "fileName": "bg.theophanov"
    },
    {
      "language": "Chinese",
      "isRtl": false,
      "nameInLanguage": "Ma Jian",
      "translator": "Ma Jian",
      "fileName": "zh.jian"
    },
    {
      "language": "Chinese",
      "isRtl": false,
      "nameInLanguage": "Ma Jian (Traditional)",
      "translator": "Ma Jian",
      "fileName": "zh.majian"
    },
    {
      "language": "Czech",
      "isRtl": false,
      "nameInLanguage": "Hrbek",
      "translator": "Preklad I. Hrbek",
      "fileName": "cs.hrbek"
    },
    {
      "language": "Czech",
      "isRtl": false,
      "nameInLanguage": "Nykl",
      "translator": "A. R. Nykl",
      "fileName": "cs.nykl"
    },
    {
      "language": "Divehi",
      "isRtl": true,
      "nameInLanguage": "ދިވެހި",
      "translator": "Office of the President of Maldives",
      "fileName": "dv.divehi"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Keyzer",
      "translator": "Salomo Keyzer",
      "fileName": "nl.keyzer"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Leemhuis",
      "translator": "Fred Leemhuis",
      "fileName": "nl.leemhuis"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Siregar",
      "translator": "Sofian S. Siregar",
      "fileName": "nl.siregar"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Ahmed Ali",
      "translator": "Ahmed Ali",
      "fileName": "en.ahmedali"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Ahmed Raza Khan",
      "translator": "Ahmed Raza Khan",
      "fileName": "en.ahmedraza"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Arberry",
      "translator": "A. J. Arberry",
      "fileName": "en.arberry"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Daryabadi",
      "translator": "Abdul Majid Daryabadi",
      "fileName": "en.daryabadi"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Hilali & Khan",
      "translator": "Muhammad Taqi-ud-Din al-Hilali and Muhammad Muhsin Khan",
      "fileName": "en.hilali"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Itani",
      "translator": "Talal Itani",
      "fileName": "en.itani"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Maududi",
      "translator": "Abul Ala Maududi",
      "fileName": "en.maududi"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Mubarakpuri",
      "translator": "Safi-ur-Rahman al-Mubarakpuri",
      "fileName": "en.mubarakpuri"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Pickthall",
      "translator": "Mohammed Marmaduke William Pickthall",
      "fileName": "en.pickthall"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Qarai",
      "translator": "Ali Quli Qarai",
      "fileName": "en.qarai"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Qaribullah & Darwish",
      "translator": "Hasan al-Fatih Qaribullah and Ahmad Darwish",
      "fileName": "en.qaribullah"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Saheeh International",
      "translator": "Saheeh International",
      "fileName": "en.sahih"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Sarwar",
      "translator": "Muhammad Sarwar",
      "fileName": "en.sarwar"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Shakir",
      "translator": "Mohammad Habib Shakir",
      "fileName": "en.shakir"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Transliteration",
      "translator": "English Transliteration",
      "fileName": "en.transliteration"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Wahiduddin Khan",
      "translator": "Wahiduddin Khan",
      "fileName": "en.wahiduddin"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Yusuf Ali",
      "translator": "Abdullah Yusuf Ali",
      "fileName": "en.yusufali"
    },
    {
      "language": "French",
      "isRtl": false,
      "nameInLanguage": "Hamidullah",
      "translator": "Muhammad Hamidullah",
      "fileName": "fr.hamidullah"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Abu Rida",
      "translator": "Abu Rida Muhammad ibn Ahmad ibn Rassoul",
      "fileName": "de.aburida"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Bubenheim & Elyas",
      "translator": "A. S. F. Bubenheim and N. Elyas",
      "fileName": "de.bubenheim"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Khoury",
      "translator": "Adel Theodor Khoury",
      "fileName": "de.khoury"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Zaidan",
      "translator": "Amir Zaidan",
      "fileName": "de.zaidan"
    },
    {
      "language": "Hausa",
      "isRtl": false,
      "nameInLanguage": "Gumi",
      "translator": "Abubakar Mahmoud Gumi",
      "fileName": "ha.gumi"
    },
    {
      "language": "Hindi",
      "isRtl": false,
      "nameInLanguage": "फ़ारूक़ ख़ान & अहमद",
      "translator": "Muhammad Farooq Khan and Muhammad Ahmed",
      "fileName": "hi.farooq"
    },
    {
      "language": "Hindi",
      "isRtl": false,
      "nameInLanguage": "फ़ारूक़ ख़ान & नदवी",
      "translator": "Suhel Farooq Khan and Saifur Rahman Nadwi",
      "fileName": "hi.hindi"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Bahasa Indonesia",
      "translator": "Indonesian Ministry of Religious Affairs",
      "fileName": "id.indonesian"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Quraish Shihab",
      "translator": "Muhammad Quraish Shihab et al.",
      "fileName": "id.muntakhab"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Tafsir Jalalayn",
      "translator": "Jalal ad-Din al-Mahalli and Jalal ad-Din as-Suyuti",
      "fileName": "id.jalalayn"
    },
    {
      "language": "Italian",
      "isRtl": false,
      "nameInLanguage": "Piccardo",
      "translator": "Hamza Roberto Piccardo",
      "fileName": "it.piccardo"
    },
    {
      "language": "Japanese",
      "isRtl": false,
      "nameInLanguage": "Japanese",
      "translator": "Unknown",
      "fileName": "ja.japanese"
    },
    {
      "language": "Korean",
      "isRtl": false,
      "nameInLanguage": "Korean",
      "translator": "Unknown",
      "fileName": "ko.korean"
    },
    {
      "language": "Kurdish",
      "isRtl": true,
      "nameInLanguage": "ته‌فسیری ئاسان",
      "translator": "Burhan Muhammad-Amin",
      "fileName": "ku.asan"
    },
    {
      "language": "Malay",
      "isRtl": false,
      "nameInLanguage": "Basmeih",
      "translator": "Abdullah Muhammad Basmeih",
      "fileName": "ms.basmeih"
    },
    {
      "language": "Malayalam",
      "isRtl": false,
      "nameInLanguage": "അബ്ദുല്‍ ഹമീദ് & പറപ്പൂര്‍",
      "translator": "Cheriyamundam Abdul Hameed and Kunhi Mohammed Parappoor",
      "fileName": "ml.abdulhameed"
    },
    {
      "language": "Malayalam",
      "isRtl": false,
      "nameInLanguage": "കാരകുന്ന് & എളയാവൂര്",
      "translator": "Muhammad Karakunnu and Vanidas Elayavoor",
      "fileName": "ml.karakunnu"
    },
    {
      "language": "Norwegian",
      "isRtl": false,
      "nameInLanguage": "Einar Berg",
      "translator": "Einar Berg",
      "fileName": "no.berg"
    },
    {
      "language": "Pashto",
      "isRtl": true,
      "nameInLanguage": "عبدالولي",
      "translator": "Abdulwali Khan",
      "fileName": "ps.abdulwali"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "انصاریان",
      "translator": "Hussain Ansarian",
      "fileName": "fa.ansarian"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "آیتی",
      "translator": "AbdolMohammad Ayati",
      "fileName": "fa.ayati"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "بهرام‌پور",
      "translator": "Abolfazl Bahrampour",
      "fileName": "fa.bahrampour"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "قرائتی",
      "translator": "Mohsen Gharaati",
      "fileName": "fa.gharaati"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "الهی قمشه‌ای",
      "translator": "Mahdi Elahi Ghomshei",
      "fileName": "fa.ghomshei"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "خرمدل",
      "translator": "Mostafa Khorramdel",
      "fileName": "fa.khorramdel"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "خرمشاهی",
      "translator": "Baha'oddin Khorramshahi",
      "fileName": "fa.khorramshahi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "صادقی تهرانی",
      "translator": "Mohammad Sadeqi Tehrani",
      "fileName": "fa.sadeqi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "صفوی",
      "translator": "Sayyed Mohammad Reza Safavi",
      "fileName": "fa.safavi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "فولادوند",
      "translator": "Mohammad Mahdi Fooladvand",
      "fileName": "fa.fooladvand"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "مجتبوی",
      "translator": "Sayyed Jalaloddin Mojtabavi",
      "fileName": "fa.mojtabavi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "معزی",
      "translator": "Mohammad Kazem Moezzi",
      "fileName": "fa.moezzi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "مکارم شیرازی",
      "translator": "Naser Makarem Shirazi",
      "fileName": "fa.makarem"
    },
    {
      "language": "Polish",
      "isRtl": false,
      "nameInLanguage": "Bielawskiego",
      "translator": "Józefa Bielawskiego",
      "fileName": "pl.bielawskiego"
    },
    {
      "language": "Portuguese",
      "isRtl": false,
      "nameInLanguage": "El-Hayek",
      "translator": "Samir El-Hayek",
      "fileName": "pt.elhayek"
    },
    {
      "language": "Romanian",
      "isRtl": false,
      "nameInLanguage": "Grigore",
      "translator": "George Grigore",
      "fileName": "ro.grigore"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Абу Адель",
      "translator": "Abu Adel",
      "fileName": "ru.abuadel"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Аль-Мунтахаб",
      "translator": "Ministry of Awqaf, Egypt",
      "fileName": "ru.muntahab"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Калям Шариф",
      "translator": "Muslim Religious Board of the Republiс of Tatarstan",
      "fileName": "ru.kalam"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Крачковский",
      "translator": "Ignaty Yulianovich Krachkovsky",
      "fileName": "ru.krachkovsky"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Кулиев",
      "translator": "Elmir Kuliev",
      "fileName": "ru.kuliev"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Кулиев + ас-Саади",
      "translator": "Elmir Kuliev (with Abd ar-Rahman as-Saadi's commentaries)",
      "fileName": "ru.kuliev-alsaadi"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Османов",
      "translator": "Magomed-Nuri Osmanovich Osmanov",
      "fileName": "ru.osmanov"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Порохова",
      "translator": "V. Porokhova",
      "fileName": "ru.porokhova"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Саблуков",
      "translator": "Gordy Semyonovich Sablukov",
      "fileName": "ru.sablukov"
    },
    {
      "language": "Sindhi",
      "isRtl": true,
      "nameInLanguage": "امروٽي",
      "translator": "Taj Mehmood Amroti",
      "fileName": "sd.amroti"
    },
    {
      "language": "Somali",
      "isRtl": false,
      "nameInLanguage": "Abduh",
      "translator": "Mahmud Muhammad Abduh",
      "fileName": "so.abduh"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Bornez",
      "translator": "Raúl González Bórnez",
      "fileName": "es.bornez"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Cortes",
      "translator": "Julio Cortes",
      "fileName": "es.cortes"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Garcia",
      "translator": "Muhammad Isa García",
      "fileName": "es.garcia"
    },
    {
      "language": "Swahili",
      "isRtl": false,
      "nameInLanguage": "Al-Barwani",
      "translator": "Ali Muhsin Al-Barwani",
      "fileName": "sw.barwani"
    },
    {
      "language": "Swedish",
      "isRtl": false,
      "nameInLanguage": "Bernström",
      "translator": "Knut Bernström",
      "fileName": "sv.bernstrom"
    },
    {
      "language": "Tajik",
      "isRtl": false,
      "nameInLanguage": "Оятӣ",
      "translator": "AbdolMohammad Ayati",
      "fileName": "tg.ayati"
    },
    {
      "language": "Tamil",
      "isRtl": false,
      "nameInLanguage": "ஜான் டிரஸ்ட்",
      "translator": "Jan Turst Foundation",
      "fileName": "ta.tamil"
    },
    {
      "language": "Tatar",
      "isRtl": false,
      "nameInLanguage": "Yakub Ibn Nugman",
      "translator": "Yakub Ibn Nugman",
      "fileName": "tt.nugman"
    },
    {
      "language": "Thai",
      "isRtl": false,
      "nameInLanguage": "ภาษาไทย",
      "translator": "King Fahad Quran Complex",
      "fileName": "th.thai"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Abdulbakî Gölpınarlı",
      "translator": "Abdulbaki Golpinarli",
      "fileName": "tr.golpinarli"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Alİ Bulaç",
      "translator": "Alİ Bulaç",
      "fileName": "tr.bulac"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Çeviriyazı",
      "translator": "Muhammet Abay",
      "fileName": "tr.transliteration"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Diyanet İşleri",
      "translator": "Diyanet Isleri",
      "fileName": "tr.diyanet"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Diyanet Vakfı",
      "translator": "Diyanet Vakfi",
      "fileName": "tr.vakfi"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Edip Yüksel",
      "translator": "Edip Yüksel",
      "fileName": "tr.yuksel"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Elmalılı Hamdi Yazır",
      "translator": "Elmalili Hamdi Yazir",
      "fileName": "tr.yazir"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Öztürk",
      "translator": "Yasar Nuri Ozturk",
      "fileName": "tr.ozturk"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Suat Yıldırım",
      "translator": "Suat Yildirim",
      "fileName": "tr.yildirim"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Süleyman Ateş",
      "translator": "Suleyman Ates",
      "fileName": "tr.ates"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "ابوالاعلی مودودی",
      "translator": "Abul A'ala Maududi",
      "fileName": "ur.maududi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "احمد رضا خان",
      "translator": "Ahmed Raza Khan",
      "fileName": "ur.kanzuliman"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "احمد علی",
      "translator": "Ahmed Ali",
      "fileName": "ur.ahmedali"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "جالندہری",
      "translator": "Fateh Muhammad Jalandhry",
      "fileName": "ur.jalandhry"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "طاہر القادری",
      "translator": "Tahir ul Qadri",
      "fileName": "ur.qadri"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "علامہ جوادی",
      "translator": "Syed Zeeshan Haider Jawadi",
      "fileName": "ur.jawadi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "محمد جوناگڑھی",
      "translator": "Muhammad Junagarhi",
      "fileName": "ur.junagarhi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "محمد حسین نجفی",
      "translator": "Muhammad Hussain Najafi",
      "fileName": "ur.najafi"
    },
    {
      "language": "Uyghur",
      "isRtl": true,
      "nameInLanguage": "محمد صالح",
      "translator": "Muhammad Saleh",
      "fileName": "ug.saleh"
    },
    {
      "language": "Uzbek",
      "isRtl": true,
      "nameInLanguage": "Мухаммад Содик",
      "translator": "Muhammad Sodik Muhammad Yusuf",
      "fileName": "uz.sodik"
    }

  ];


}