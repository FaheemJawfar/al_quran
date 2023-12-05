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
        fileName: json["file_name"],
      );

  Map<String, dynamic> toJson() =>
      {
        "language": language,
        "isRtl": isRtl,
        "nameInLanguage": nameInLanguage,
        "translator": translator,
        "file_name": fileName,
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

  static final metadata = [
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Efendi Nahi",
      "translator": "Hasan Efendi Nahi",
      "file_name": "sq.nahi"
    },
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Feti Mehdiu",
      "translator": "Feti Mehdiu",
      "file_name": "sq.mehdiu"
    },
    {
      "language": "Albanian",
      "isRtl": false,
      "nameInLanguage": "Sherif Ahmeti",
      "translator": "Sherif Ahmeti",
      "file_name": "sq.ahmeti"
    },
    {
      "language": "Amazigh",
      "isRtl": false,
      "nameInLanguage": "At Mensur",
      "translator": "Ramdane At Mansour",
      "file_name": "ber.mensur"
    },
    {
      "language": "Arabic",
      "isRtl": true,
      "nameInLanguage": "تفسير الجلالين",
      "translator": "Jalal ad-Din al-Mahalli and Jalal ad-Din as-Suyuti",
      "file_name": "ar.jalalayn"
    },
    {
      "language": "Arabic",
      "isRtl": true,
      "nameInLanguage": "تفسير المیسر",
      "translator": "King Fahad Quran Complex",
      "file_name": "ar.muyassar"
    },
    {
      "language": "Amharic",
      "isRtl": false,
      "nameInLanguage": "ሳዲቅ & ሳኒ ሐቢብ",
      "translator": "Muhammed Sadiq and Muhammed Sani Habib",
      "file_name": "am.sadiq"
    },
    {
      "language": "Azerbaijani",
      "isRtl": false,
      "nameInLanguage": "Məmmədəliyev & Bünyadov",
      "translator": "Vasim Mammadaliyev and Ziya Bunyadov",
      "file_name": "az.mammadaliyev"
    },
    {
      "language": "Azerbaijani",
      "isRtl": false,
      "nameInLanguage": "Musayev",
      "translator": "Alikhan Musayev",
      "file_name": "az.musayev"
    },
    {
      "language": "Bengali",
      "isRtl": false,
      "nameInLanguage": "জহুরুল হক",
      "translator": "Zohurul Hoque",
      "file_name": "bn.hoque"
    },
    {
      "language": "Bengali",
      "isRtl": false,
      "nameInLanguage": "মুহিউদ্দীন খান",
      "translator": "Muhiuddin Khan",
      "file_name": "bn.bengali"
    },
    {
      "language": "Bosnian",
      "isRtl": false,
      "nameInLanguage": "Korkut",
      "translator": "Besim Korkut",
      "file_name": "bs.korkut"
    },
    {
      "language": "Bosnian",
      "isRtl": false,
      "nameInLanguage": "Mlivo",
      "translator": "Mustafa Mlivo",
      "file_name": "bs.mlivo"
    },
    {
      "language": "Bulgarian",
      "isRtl": false,
      "nameInLanguage": "Теофанов",
      "translator": "Tzvetan Theophanov",
      "file_name": "bg.theophanov"
    },
    {
      "language": "Chinese",
      "isRtl": false,
      "nameInLanguage": "Ma Jian",
      "translator": "Ma Jian",
      "file_name": "zh.jian"
    },
    {
      "language": "Chinese",
      "isRtl": false,
      "nameInLanguage": "Ma Jian (Traditional)",
      "translator": "Ma Jian",
      "file_name": "zh.majian"
    },
    {
      "language": "Czech",
      "isRtl": false,
      "nameInLanguage": "Hrbek",
      "translator": "Preklad I. Hrbek",
      "file_name": "cs.hrbek"
    },
    {
      "language": "Czech",
      "isRtl": false,
      "nameInLanguage": "Nykl",
      "translator": "A. R. Nykl",
      "file_name": "cs.nykl"
    },
    {
      "language": "Divehi",
      "isRtl": true,
      "nameInLanguage": "ދިވެހި",
      "translator": "Office of the President of Maldives",
      "file_name": "dv.divehi"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Keyzer",
      "translator": "Salomo Keyzer",
      "file_name": "nl.keyzer"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Leemhuis",
      "translator": "Fred Leemhuis",
      "file_name": "nl.leemhuis"
    },
    {
      "language": "Dutch",
      "isRtl": false,
      "nameInLanguage": "Siregar",
      "translator": "Sofian S. Siregar",
      "file_name": "nl.siregar"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Ahmed Ali",
      "translator": "Ahmed Ali",
      "file_name": "en.ahmedali"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Ahmed Raza Khan",
      "translator": "Ahmed Raza Khan",
      "file_name": "en.ahmedraza"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Arberry",
      "translator": "A. J. Arberry",
      "file_name": "en.arberry"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Daryabadi",
      "translator": "Abdul Majid Daryabadi",
      "file_name": "en.daryabadi"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Hilali & Khan",
      "translator": "Muhammad Taqi-ud-Din al-Hilali and Muhammad Muhsin Khan",
      "file_name": "en.hilali"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Itani",
      "translator": "Talal Itani",
      "file_name": "en.itani"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Maududi",
      "translator": "Abul Ala Maududi",
      "file_name": "en.maududi"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Mubarakpuri",
      "translator": "Safi-ur-Rahman al-Mubarakpuri",
      "file_name": "en.mubarakpuri"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Pickthall",
      "translator": "Mohammed Marmaduke William Pickthall",
      "file_name": "en.pickthall"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Qarai",
      "translator": "Ali Quli Qarai",
      "file_name": "en.qarai"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Qaribullah & Darwish",
      "translator": "Hasan al-Fatih Qaribullah and Ahmad Darwish",
      "file_name": "en.qaribullah"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Saheeh International",
      "translator": "Saheeh International",
      "file_name": "en.sahih"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Sarwar",
      "translator": "Muhammad Sarwar",
      "file_name": "en.sarwar"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Shakir",
      "translator": "Mohammad Habib Shakir",
      "file_name": "en.shakir"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Transliteration",
      "translator": "English Transliteration",
      "file_name": "en.transliteration"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Wahiduddin Khan",
      "translator": "Wahiduddin Khan",
      "file_name": "en.wahiduddin"
    },
    {
      "language": "English",
      "isRtl": false,
      "nameInLanguage": "Yusuf Ali",
      "translator": "Abdullah Yusuf Ali",
      "file_name": "en.yusufali"
    },
    {
      "language": "French",
      "isRtl": false,
      "nameInLanguage": "Hamidullah",
      "translator": "Muhammad Hamidullah",
      "file_name": "fr.hamidullah"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Abu Rida",
      "translator": "Abu Rida Muhammad ibn Ahmad ibn Rassoul",
      "file_name": "de.aburida"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Bubenheim & Elyas",
      "translator": "A. S. F. Bubenheim and N. Elyas",
      "file_name": "de.bubenheim"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Khoury",
      "translator": "Adel Theodor Khoury",
      "file_name": "de.khoury"
    },
    {
      "language": "German",
      "isRtl": false,
      "nameInLanguage": "Zaidan",
      "translator": "Amir Zaidan",
      "file_name": "de.zaidan"
    },
    {
      "language": "Hausa",
      "isRtl": false,
      "nameInLanguage": "Gumi",
      "translator": "Abubakar Mahmoud Gumi",
      "file_name": "ha.gumi"
    },
    {
      "language": "Hindi",
      "isRtl": false,
      "nameInLanguage": "फ़ारूक़ ख़ान & अहमद",
      "translator": "Muhammad Farooq Khan and Muhammad Ahmed",
      "file_name": "hi.farooq"
    },
    {
      "language": "Hindi",
      "isRtl": false,
      "nameInLanguage": "फ़ारूक़ ख़ान & नदवी",
      "translator": "Suhel Farooq Khan and Saifur Rahman Nadwi",
      "file_name": "hi.hindi"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Bahasa Indonesia",
      "translator": "Indonesian Ministry of Religious Affairs",
      "file_name": "id.indonesian"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Quraish Shihab",
      "translator": "Muhammad Quraish Shihab et al.",
      "file_name": "id.muntakhab"
    },
    {
      "language": "Indonesian",
      "isRtl": false,
      "nameInLanguage": "Tafsir Jalalayn",
      "translator": "Jalal ad-Din al-Mahalli and Jalal ad-Din as-Suyuti",
      "file_name": "id.jalalayn"
    },
    {
      "language": "Italian",
      "isRtl": false,
      "nameInLanguage": "Piccardo",
      "translator": "Hamza Roberto Piccardo",
      "file_name": "it.piccardo"
    },
    {
      "language": "Japanese",
      "isRtl": false,
      "nameInLanguage": "Japanese",
      "translator": "Unknown",
      "file_name": "ja.japanese"
    },
    {
      "language": "Korean",
      "isRtl": false,
      "nameInLanguage": "Korean",
      "translator": "Unknown",
      "file_name": "ko.korean"
    },
    {
      "language": "Kurdish",
      "isRtl": true,
      "nameInLanguage": "ته‌فسیری ئاسان",
      "translator": "Burhan Muhammad-Amin",
      "file_name": "ku.asan"
    },
    {
      "language": "Malay",
      "isRtl": false,
      "nameInLanguage": "Basmeih",
      "translator": "Abdullah Muhammad Basmeih",
      "file_name": "ms.basmeih"
    },
    {
      "language": "Malayalam",
      "isRtl": false,
      "nameInLanguage": "അബ്ദുല്‍ ഹമീദ് & പറപ്പൂര്‍",
      "translator": "Cheriyamundam Abdul Hameed and Kunhi Mohammed Parappoor",
      "file_name": "ml.abdulhameed"
    },
    {
      "language": "Malayalam",
      "isRtl": false,
      "nameInLanguage": "കാരകുന്ന് & എളയാവൂര്",
      "translator": "Muhammad Karakunnu and Vanidas Elayavoor",
      "file_name": "ml.karakunnu"
    },
    {
      "language": "Norwegian",
      "isRtl": false,
      "nameInLanguage": "Einar Berg",
      "translator": "Einar Berg",
      "file_name": "no.berg"
    },
    {
      "language": "Pashto",
      "isRtl": true,
      "nameInLanguage": "عبدالولي",
      "translator": "Abdulwali Khan",
      "file_name": "ps.abdulwali"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "انصاریان",
      "translator": "Hussain Ansarian",
      "file_name": "fa.ansarian"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "آیتی",
      "translator": "AbdolMohammad Ayati",
      "file_name": "fa.ayati"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "بهرام‌پور",
      "translator": "Abolfazl Bahrampour",
      "file_name": "fa.bahrampour"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "قرائتی",
      "translator": "Mohsen Gharaati",
      "file_name": "fa.gharaati"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "الهی قمشه‌ای",
      "translator": "Mahdi Elahi Ghomshei",
      "file_name": "fa.ghomshei"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "خرمدل",
      "translator": "Mostafa Khorramdel",
      "file_name": "fa.khorramdel"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "خرمشاهی",
      "translator": "Baha'oddin Khorramshahi",
      "file_name": "fa.khorramshahi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "صادقی تهرانی",
      "translator": "Mohammad Sadeqi Tehrani",
      "file_name": "fa.sadeqi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "صفوی",
      "translator": "Sayyed Mohammad Reza Safavi",
      "file_name": "fa.safavi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "فولادوند",
      "translator": "Mohammad Mahdi Fooladvand",
      "file_name": "fa.fooladvand"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "مجتبوی",
      "translator": "Sayyed Jalaloddin Mojtabavi",
      "file_name": "fa.mojtabavi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "معزی",
      "translator": "Mohammad Kazem Moezzi",
      "file_name": "fa.moezzi"
    },
    {
      "language": "Persian",
      "isRtl": true,
      "nameInLanguage": "مکارم شیرازی",
      "translator": "Naser Makarem Shirazi",
      "file_name": "fa.makarem"
    },
    {
      "language": "Polish",
      "isRtl": false,
      "nameInLanguage": "Bielawskiego",
      "translator": "Józefa Bielawskiego",
      "file_name": "pl.bielawskiego"
    },
    {
      "language": "Portuguese",
      "isRtl": false,
      "nameInLanguage": "El-Hayek",
      "translator": "Samir El-Hayek",
      "file_name": "pt.elhayek"
    },
    {
      "language": "Romanian",
      "isRtl": false,
      "nameInLanguage": "Grigore",
      "translator": "George Grigore",
      "file_name": "ro.grigore"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Абу Адель",
      "translator": "Abu Adel",
      "file_name": "ru.abuadel"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Аль-Мунтахаб",
      "translator": "Ministry of Awqaf, Egypt",
      "file_name": "ru.muntahab"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Калям Шариф",
      "translator": "Muslim Religious Board of the Republiс of Tatarstan",
      "file_name": "ru.kalam"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Крачковский",
      "translator": "Ignaty Yulianovich Krachkovsky",
      "file_name": "ru.krachkovsky"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Кулиев",
      "translator": "Elmir Kuliev",
      "file_name": "ru.kuliev"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Кулиев + ас-Саади",
      "translator": "Elmir Kuliev (with Abd ar-Rahman as-Saadi's commentaries)",
      "file_name": "ru.kuliev-alsaadi"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Османов",
      "translator": "Magomed-Nuri Osmanovich Osmanov",
      "file_name": "ru.osmanov"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Порохова",
      "translator": "V. Porokhova",
      "file_name": "ru.porokhova"
    },
    {
      "language": "Russian",
      "isRtl": false,
      "nameInLanguage": "Саблуков",
      "translator": "Gordy Semyonovich Sablukov",
      "file_name": "ru.sablukov"
    },
    {
      "language": "Sindhi",
      "isRtl": true,
      "nameInLanguage": "امروٽي",
      "translator": "Taj Mehmood Amroti",
      "file_name": "sd.amroti"
    },
    {
      "language": "Somali",
      "isRtl": false,
      "nameInLanguage": "Abduh",
      "translator": "Mahmud Muhammad Abduh",
      "file_name": "so.abduh"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Bornez",
      "translator": "Raúl González Bórnez",
      "file_name": "es.bornez"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Cortes",
      "translator": "Julio Cortes",
      "file_name": "es.cortes"
    },
    {
      "language": "Spanish",
      "isRtl": false,
      "nameInLanguage": "Garcia",
      "translator": "Muhammad Isa García",
      "file_name": "es.garcia"
    },
    {
      "language": "Swahili",
      "isRtl": false,
      "nameInLanguage": "Al-Barwani",
      "translator": "Ali Muhsin Al-Barwani",
      "file_name": "sw.barwani"
    },
    {
      "language": "Swedish",
      "isRtl": false,
      "nameInLanguage": "Bernström",
      "translator": "Knut Bernström",
      "file_name": "sv.bernstrom"
    },
    {
      "language": "Tajik",
      "isRtl": false,
      "nameInLanguage": "Оятӣ",
      "translator": "AbdolMohammad Ayati",
      "file_name": "tg.ayati"
    },
    {
      "language": "Tamil",
      "isRtl": false,
      "nameInLanguage": "ஜான் டிரஸ்ட்",
      "translator": "Jan Turst Foundation",
      "file_name": "ta.tamil"
    },
    {
      "language": "Tatar",
      "isRtl": false,
      "nameInLanguage": "Yakub Ibn Nugman",
      "translator": "Yakub Ibn Nugman",
      "file_name": "tt.nugman"
    },
    {
      "language": "Thai",
      "isRtl": false,
      "nameInLanguage": "ภาษาไทย",
      "translator": "King Fahad Quran Complex",
      "file_name": "th.thai"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Abdulbakî Gölpınarlı",
      "translator": "Abdulbaki Golpinarli",
      "file_name": "tr.golpinarli"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Alİ Bulaç",
      "translator": "Alİ Bulaç",
      "file_name": "tr.bulac"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Çeviriyazı",
      "translator": "Muhammet Abay",
      "file_name": "tr.transliteration"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Diyanet İşleri",
      "translator": "Diyanet Isleri",
      "file_name": "tr.diyanet"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Diyanet Vakfı",
      "translator": "Diyanet Vakfi",
      "file_name": "tr.vakfi"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Edip Yüksel",
      "translator": "Edip Yüksel",
      "file_name": "tr.yuksel"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Elmalılı Hamdi Yazır",
      "translator": "Elmalili Hamdi Yazir",
      "file_name": "tr.yazir"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Öztürk",
      "translator": "Yasar Nuri Ozturk",
      "file_name": "tr.ozturk"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Suat Yıldırım",
      "translator": "Suat Yildirim",
      "file_name": "tr.yildirim"
    },
    {
      "language": "Turkish",
      "isRtl": false,
      "nameInLanguage": "Süleyman Ateş",
      "translator": "Suleyman Ates",
      "file_name": "tr.ates"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "ابوالاعلی مودودی",
      "translator": "Abul A'ala Maududi",
      "file_name": "ur.maududi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "احمد رضا خان",
      "translator": "Ahmed Raza Khan",
      "file_name": "ur.kanzuliman"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "احمد علی",
      "translator": "Ahmed Ali",
      "file_name": "ur.ahmedali"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "جالندہری",
      "translator": "Fateh Muhammad Jalandhry",
      "file_name": "ur.jalandhry"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "طاہر القادری",
      "translator": "Tahir ul Qadri",
      "file_name": "ur.qadri"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "علامہ جوادی",
      "translator": "Syed Zeeshan Haider Jawadi",
      "file_name": "ur.jawadi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "محمد جوناگڑھی",
      "translator": "Muhammad Junagarhi",
      "file_name": "ur.junagarhi"
    },
    {
      "language": "Urdu",
      "isRtl": true,
      "nameInLanguage": "محمد حسین نجفی",
      "translator": "Muhammad Hussain Najafi",
      "file_name": "ur.najafi"
    },
    {
      "language": "Uyghur",
      "isRtl": true,
      "nameInLanguage": "محمد صالح",
      "translator": "Muhammad Saleh",
      "file_name": "ug.saleh"
    },
    {
      "language": "Uzbek",
      "isRtl": true,
      "nameInLanguage": "Мухаммад Содик",
      "translator": "Muhammad Sodik Muhammad Yusuf",
      "file_name": "uz.sodik"
    }

  ];


}