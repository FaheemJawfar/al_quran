class SuraDetails {
  int suraNumber;
  int totalVerses;
  String start;
  String nameInArabic;
  String nameInEnglish;
  String meaningOfName;
  String type;
  String order;
  String rukus;

  SuraDetails({
    required this.suraNumber,
    required this.totalVerses,
    required this.start,
    required this.nameInArabic,
    required this.nameInEnglish,
    required this.meaningOfName,
    required this.type,
    required this.order,
    required this.rukus,
  });

  factory SuraDetails.fromJson(Map<String, dynamic> json) => SuraDetails(
    suraNumber: int.parse(json["index"]),
    totalVerses: int.parse(json["totalAyas"]),
    start: json["start"],
    nameInArabic: json["nameInArabic"],
    nameInEnglish: json["nameInEnglish"],
    meaningOfName: json["meaningOfName"],
    type: json["type"],
    order: json["order"],
    rukus: json["rukus"],
  );

  Map<String, dynamic> toJson() => {
    "index": suraNumber,
    "totalAyas": totalVerses,
    "start": start,
    "nameInArabic": nameInArabic,
    "nameInEnglish": nameInEnglish,
    "meaningOfName": meaningOfName,
    "type": type,
    "order": order,
    "rukus": rukus,
  };


  @override
  String toString() {
    return 'SuraDetails(index: $suraNumber, totalAyas: $totalVerses, start: "$start", '
        'nameInArabic: "$nameInArabic", nameInEnglish: "$nameInEnglish", '
        'meaningOfName: "$meaningOfName", type: "$type", order: "$order", rukus: "$rukus"),';
  }



  static List<SuraDetails> suraListAll = [

    SuraDetails(suraNumber: 1, totalVerses: 7, start: "0", nameInArabic: "الفاتحة", nameInEnglish: "Al-Faatiha", meaningOfName: "The Opening", type: "Meccan", order: "5", rukus: "1"),
    SuraDetails(suraNumber: 2, totalVerses: 286, start: "7", nameInArabic: "البقرة", nameInEnglish: "Al-Baqara", meaningOfName: "The Cow", type: "Medinan", order: "87", rukus: "40"),
    SuraDetails(suraNumber: 3, totalVerses: 200, start: "293", nameInArabic: "آل عمران", nameInEnglish: "Aal-i-Imraan", meaningOfName: "The Family of Imraan", type: "Medinan", order: "89", rukus: "20"),
    SuraDetails(suraNumber: 4, totalVerses: 176, start: "493", nameInArabic: "النساء", nameInEnglish: "An-Nisaa", meaningOfName: "The Women", type: "Medinan", order: "92", rukus: "24"),
    SuraDetails(suraNumber: 5, totalVerses: 120, start: "669", nameInArabic: "المائدة", nameInEnglish: "Al-Maaida", meaningOfName: "The Table", type: "Medinan", order: "112", rukus: "16"),
    SuraDetails(suraNumber: 6, totalVerses: 165, start: "789", nameInArabic: "الأنعام", nameInEnglish: "Al-An'aam", meaningOfName: "The Cattle", type: "Meccan", order: "55", rukus: "20"),
    SuraDetails(suraNumber: 7, totalVerses: 206, start: "954", nameInArabic: "الأعراف", nameInEnglish: "Al-A'raaf", meaningOfName: "The Heights", type: "Meccan", order: "39", rukus: "24"),
    SuraDetails(suraNumber: 8, totalVerses: 75, start: "1160", nameInArabic: "الأنفال", nameInEnglish: "Al-Anfaal", meaningOfName: "The Spoils of War", type: "Medinan", order: "88", rukus: "10"),
    SuraDetails(suraNumber: 9, totalVerses: 129, start: "1235", nameInArabic: "التوبة", nameInEnglish: "At-Tawba", meaningOfName: "The Repentance", type: "Medinan", order: "113", rukus: "16"),
    SuraDetails(suraNumber: 10, totalVerses: 109, start: "1364", nameInArabic: "يونس", nameInEnglish: "Yunus", meaningOfName: "Jonas", type: "Meccan", order: "51", rukus: "11"),
    SuraDetails(suraNumber: 11, totalVerses: 123, start: "1473", nameInArabic: "هود", nameInEnglish: "Hud", meaningOfName: "Hud", type: "Meccan", order: "52", rukus: "10"),
    SuraDetails(suraNumber: 12, totalVerses: 111, start: "1596", nameInArabic: "يوسف", nameInEnglish: "Yusuf", meaningOfName: "Joseph", type: "Meccan", order: "53", rukus: "12"),
    SuraDetails(suraNumber: 13, totalVerses: 43, start: "1707", nameInArabic: "الرعد", nameInEnglish: "Ar-Ra'd", meaningOfName: "The Thunder", type: "Medinan", order: "96", rukus: "6"),
    SuraDetails(suraNumber: 14, totalVerses: 52, start: "1750", nameInArabic: "ابراهيم", nameInEnglish: "Ibrahim", meaningOfName: "Abraham", type: "Meccan", order: "72", rukus: "7"),
    SuraDetails(suraNumber: 15, totalVerses: 99, start: "1802", nameInArabic: "الحجر", nameInEnglish: "Al-Hijr", meaningOfName: "The Rock", type: "Meccan", order: "54", rukus: "6"),
    SuraDetails(suraNumber: 16, totalVerses: 128, start: "1901", nameInArabic: "النحل", nameInEnglish: "An-Nahl", meaningOfName: "The Bee", type: "Meccan", order: "70", rukus: "16"),
    SuraDetails(suraNumber: 17, totalVerses: 111, start: "2029", nameInArabic: "الإسراء", nameInEnglish: "Al-Israa", meaningOfName: "The Night Journey", type: "Meccan", order: "50", rukus: "12"),
    SuraDetails(suraNumber: 18, totalVerses: 110, start: "2140", nameInArabic: "الكهف", nameInEnglish: "Al-Kahf", meaningOfName: "The Cave", type: "Meccan", order: "69", rukus: "12"),
    SuraDetails(suraNumber: 19, totalVerses: 98, start: "2250", nameInArabic: "مريم", nameInEnglish: "Maryam", meaningOfName: "Mary", type: "Meccan", order: "44", rukus: "6"),
    SuraDetails(suraNumber: 20, totalVerses: 135, start: "2348", nameInArabic: "طه", nameInEnglish: "Taa-Haa", meaningOfName: "Taa-Haa", type: "Meccan", order: "45", rukus: "8"),
    SuraDetails(suraNumber: 21, totalVerses: 112, start: "2483", nameInArabic: "الأنبياء", nameInEnglish: "Al-Anbiyaa", meaningOfName: "The Prophets", type: "Meccan", order: "73", rukus: "7"),
    SuraDetails(suraNumber: 22, totalVerses: 78, start: "2595", nameInArabic: "الحج", nameInEnglish: "Al-Hajj", meaningOfName: "The Pilgrimage", type: "Medinan", order: "103", rukus: "10"),
    SuraDetails(suraNumber: 23, totalVerses: 118, start: "2673", nameInArabic: "المؤمنون", nameInEnglish: "Al-Muminoon", meaningOfName: "The Believers", type: "Meccan", order: "74", rukus: "6"),
    SuraDetails(suraNumber: 24, totalVerses: 64, start: "2791", nameInArabic: "النور", nameInEnglish: "An-Noor", meaningOfName: "The Light", type: "Medinan", order: "102", rukus: "9"),
    SuraDetails(suraNumber: 25, totalVerses: 77, start: "2855", nameInArabic: "الفرقان", nameInEnglish: "Al-Furqaan", meaningOfName: "The Criterion", type: "Meccan", order: "42", rukus: "6"),
    SuraDetails(suraNumber: 26, totalVerses: 227, start: "2932", nameInArabic: "الشعراء", nameInEnglish: "Ash-Shu'araa", meaningOfName: "The Poets", type: "Meccan", order: "47", rukus: "11"),
    SuraDetails(suraNumber: 27, totalVerses: 93, start: "3159", nameInArabic: "النمل", nameInEnglish: "An-Naml", meaningOfName: "The Ant", type: "Meccan", order: "48", rukus: "7"),
    SuraDetails(suraNumber: 28, totalVerses: 88, start: "3252", nameInArabic: "القصص", nameInEnglish: "Al-Qasas", meaningOfName: "The Stories", type: "Meccan", order: "49", rukus: "8"),
    SuraDetails(suraNumber: 29, totalVerses: 69, start: "3340", nameInArabic: "العنكبوت", nameInEnglish: "Al-Ankaboot", meaningOfName: "The Spider", type: "Meccan", order: "85", rukus: "7"),
    SuraDetails(suraNumber: 30, totalVerses: 60, start: "3409", nameInArabic: "الروم", nameInEnglish: "Ar-Room", meaningOfName: "The Romans", type: "Meccan", order: "84", rukus: "6"),
    SuraDetails(suraNumber: 31, totalVerses: 34, start: "3469", nameInArabic: "لقمان", nameInEnglish: "Luqman", meaningOfName: "Luqman", type: "Meccan", order: "57", rukus: "3"),
    SuraDetails(suraNumber: 32, totalVerses: 30, start: "3503", nameInArabic: "السجدة", nameInEnglish: "As-Sajda", meaningOfName: "The Prostration", type: "Meccan", order: "75", rukus: "3"),
    SuraDetails(suraNumber: 33, totalVerses: 73, start: "3533", nameInArabic: "الأحزاب", nameInEnglish: "Al-Ahzaab", meaningOfName: "The Clans", type: "Medinan", order: "90", rukus: "9"),
    SuraDetails(suraNumber: 34, totalVerses: 54, start: "3606", nameInArabic: "سبإ", nameInEnglish: "Saba", meaningOfName: "Sheba", type: "Meccan", order: "58", rukus: "6"),
    SuraDetails(suraNumber: 35, totalVerses: 45, start: "3660", nameInArabic: "فاطر", nameInEnglish: "Faatir", meaningOfName: "The Originator", type: "Meccan", order: "43", rukus: "5"),
    SuraDetails(suraNumber: 36, totalVerses: 83, start: "3705", nameInArabic: "يس", nameInEnglish: "Yaseen", meaningOfName: "Yaseen", type: "Meccan", order: "41", rukus: "5"),
    SuraDetails(suraNumber: 37, totalVerses: 182, start: "3788", nameInArabic: "الصافات", nameInEnglish: "As-Saaffaat", meaningOfName: "Those drawn up in Ranks", type: "Meccan", order: "56", rukus: "5"),
    SuraDetails(suraNumber: 38, totalVerses: 88, start: "3970", nameInArabic: "ص", nameInEnglish: "Saad", meaningOfName: "The letter Saad", type: "Meccan", order: "38", rukus: "5"),
    SuraDetails(suraNumber: 39, totalVerses: 75, start: "4058", nameInArabic: "الزمر", nameInEnglish: "Az-Zumar", meaningOfName: "The Groups", type: "Meccan", order: "59", rukus: "8"),
    SuraDetails(suraNumber: 40, totalVerses: 85, start: "4133", nameInArabic: "غافر", nameInEnglish: "Al-Ghaafir", meaningOfName: "The Forgiver", type: "Meccan", order: "60", rukus: "9"),
    SuraDetails(suraNumber: 41, totalVerses: 54, start: "4218", nameInArabic: "فصلت", nameInEnglish: "Fussilat", meaningOfName: "Explained in detail", type: "Meccan", order: "61", rukus: "6"),
    SuraDetails(suraNumber: 42, totalVerses: 53, start: "4272", nameInArabic: "الشورى", nameInEnglish: "Ash-Shura", meaningOfName: "Consultation", type: "Meccan", order: "62", rukus: "5"),
    SuraDetails(suraNumber: 43, totalVerses: 89, start: "4325", nameInArabic: "الزخرف", nameInEnglish: "Az-Zukhruf", meaningOfName: "Ornaments of gold", type: "Meccan", order: "63", rukus: "7"),
    SuraDetails(suraNumber: 44, totalVerses: 59, start: "4414", nameInArabic: "الدخان", nameInEnglish: "Ad-Dukhaan", meaningOfName: "The Smoke", type: "Meccan", order: "64", rukus: "3"),
    SuraDetails(suraNumber: 45, totalVerses: 37, start: "4473", nameInArabic: "الجاثية", nameInEnglish: "Al-Jaathiya", meaningOfName: "Crouching", type: "Meccan", order: "65", rukus: "4"),
    SuraDetails(suraNumber: 46, totalVerses: 35, start: "4510", nameInArabic: "الأحقاف", nameInEnglish: "Al-Ahqaf", meaningOfName: "The Dunes", type: "Meccan", order: "66", rukus: "4"),
    SuraDetails(suraNumber: 47, totalVerses: 38, start: "4545", nameInArabic: "محمد", nameInEnglish: "Muhammad", meaningOfName: "Muhammad", type: "Medinan", order: "95", rukus: "4"),
    SuraDetails(suraNumber: 48, totalVerses: 29, start: "4583", nameInArabic: "الفتح", nameInEnglish: "Al-Fath", meaningOfName: "The Victory", type: "Medinan", order: "111", rukus: "4"),
    SuraDetails(suraNumber: 49, totalVerses: 18, start: "4612", nameInArabic: "الحجرات", nameInEnglish: "Al-Hujuraat", meaningOfName: "The Inner Apartments", type: "Medinan", order: "106", rukus: "2"),
    SuraDetails(suraNumber: 50, totalVerses: 45, start: "4630", nameInArabic: "ق", nameInEnglish: "Qaaf", meaningOfName: "The letter Qaaf", type: "Meccan", order: "34", rukus: "3"),
    SuraDetails(suraNumber: 51, totalVerses: 60, start: "4675", nameInArabic: "الذاريات", nameInEnglish: "Adh-Dhaariyat", meaningOfName: "The Winnowing Winds", type: "Meccan", order: "67", rukus: "3"),
    SuraDetails(suraNumber: 52, totalVerses: 49, start: "4735", nameInArabic: "الطور", nameInEnglish: "At-Tur", meaningOfName: "The Mount", type: "Meccan", order: "76", rukus: "2"),
    SuraDetails(suraNumber: 53, totalVerses: 62, start: "4784", nameInArabic: "النجم", nameInEnglish: "An-Najm", meaningOfName: "The Star", type: "Meccan", order: "23", rukus: "3"),
    SuraDetails(suraNumber: 54, totalVerses: 55, start: "4846", nameInArabic: "القمر", nameInEnglish: "Al-Qamar", meaningOfName: "The Moon", type: "Meccan", order: "37", rukus: "3"),
    SuraDetails(suraNumber: 55, totalVerses: 78, start: "4901", nameInArabic: "الرحمن", nameInEnglish: "Ar-Rahmaan", meaningOfName: "The Beneficent", type: "Medinan", order: "97", rukus: "3"),
    SuraDetails(suraNumber: 56, totalVerses: 96, start: "4979", nameInArabic: "الواقعة", nameInEnglish: "Al-Waaqia", meaningOfName: "The Inevitable", type: "Meccan", order: "46", rukus: "3"),
    SuraDetails(suraNumber: 57, totalVerses: 29, start: "5075", nameInArabic: "الحديد", nameInEnglish: "Al-Hadid", meaningOfName: "The Iron", type: "Medinan", order: "94", rukus: "4"),
    SuraDetails(suraNumber: 58, totalVerses: 22, start: "5104", nameInArabic: "المجادلة", nameInEnglish: "Al-Mujaadila", meaningOfName: "The Pleading Woman", type: "Medinan", order: "105", rukus: "3"),
    SuraDetails(suraNumber: 59, totalVerses: 24, start: "5126", nameInArabic: "الحشر", nameInEnglish: "Al-Hashr", meaningOfName: "The Exile", type: "Medinan", order: "101", rukus: "3"),
    SuraDetails(suraNumber: 60, totalVerses: 13, start: "5150", nameInArabic: "الممتحنة", nameInEnglish: "Al-Mumtahana", meaningOfName: "She that is to be examined", type: "Medinan", order: "91", rukus: "2"),
    SuraDetails(suraNumber: 61, totalVerses: 14, start: "5163", nameInArabic: "الصف", nameInEnglish: "As-Saff", meaningOfName: "The Ranks", type: "Medinan", order: "109", rukus: "2"),
    SuraDetails(suraNumber: 62, totalVerses: 11, start: "5177", nameInArabic: "الجمعة", nameInEnglish: "Al-Jumu'a", meaningOfName: "Friday", type: "Medinan", order: "110", rukus: "2"),
    SuraDetails(suraNumber: 63, totalVerses: 11, start: "5188", nameInArabic: "المنافقون", nameInEnglish: "Al-Munaafiqoon", meaningOfName: "The Hypocrites", type: "Medinan", order: "104", rukus: "2"),
    SuraDetails(suraNumber: 64, totalVerses: 18, start: "5199", nameInArabic: "التغابن", nameInEnglish: "At-Taghaabun", meaningOfName: "Mutual Disillusion", type: "Medinan", order: "108", rukus: "2"),
    SuraDetails(suraNumber: 65, totalVerses: 12, start: "5217", nameInArabic: "الطلاق", nameInEnglish: "At-Talaaq", meaningOfName: "Divorce", type: "Medinan", order: "99", rukus: "2"),
    SuraDetails(suraNumber: 66, totalVerses: 12, start: "5229", nameInArabic: "التحريم", nameInEnglish: "At-Tahrim", meaningOfName: "The Prohibition", type: "Medinan", order: "107", rukus: "2"),
    SuraDetails(suraNumber: 67, totalVerses: 30, start: "5241", nameInArabic: "الملك", nameInEnglish: "Al-Mulk", meaningOfName: "The Sovereignty", type: "Meccan", order: "77", rukus: "2"),
    SuraDetails(suraNumber: 68, totalVerses: 52, start: "5271", nameInArabic: "القلم", nameInEnglish: "Al-Qalam", meaningOfName: "The Pen", type: "Meccan", order: "2", rukus: "2"),
    SuraDetails(suraNumber: 69, totalVerses: 52, start: "5323", nameInArabic: "الحاقة", nameInEnglish: "Al-Haaqqa", meaningOfName: "The Reality", type: "Meccan", order: "78", rukus: "2"),
    SuraDetails(suraNumber: 70, totalVerses: 44, start: "5375", nameInArabic: "المعارج", nameInEnglish: "Al-Ma'aarij", meaningOfName: "The Ascending Stairways", type: "Meccan", order: "79", rukus: "2"),
    SuraDetails(suraNumber: 71, totalVerses: 28, start: "5419", nameInArabic: "نوح", nameInEnglish: "Nooh", meaningOfName: "Noah", type: "Meccan", order: "71", rukus: "2"),
    SuraDetails(suraNumber: 72, totalVerses: 28, start: "5447", nameInArabic: "الجن", nameInEnglish: "Al-Jinn", meaningOfName: "The Jinn", type: "Meccan", order: "40", rukus: "2"),
    SuraDetails(suraNumber: 73, totalVerses: 20, start: "5475", nameInArabic: "المزمل", nameInEnglish: "Al-Muzzammil", meaningOfName: "The Enshrouded One", type: "Meccan", order: "3", rukus: "2"),
    SuraDetails(suraNumber: 74, totalVerses: 56, start: "5495", nameInArabic: "المدثر", nameInEnglish: "Al-Muddaththir", meaningOfName: "The Cloaked One", type: "Meccan", order: "4", rukus: "2"),
    SuraDetails(suraNumber: 75, totalVerses: 40, start: "5551", nameInArabic: "القيامة", nameInEnglish: "Al-Qiyaama", meaningOfName: "The Resurrection", type: "Meccan", order: "31", rukus: "2"),
    SuraDetails(suraNumber: 76, totalVerses: 31, start: "5591", nameInArabic: "الانسان", nameInEnglish: "Al-Insaan", meaningOfName: "Man", type: "Medinan", order: "98", rukus: "2"),
    SuraDetails(suraNumber: 77, totalVerses: 50, start: "5622", nameInArabic: "المرسلات", nameInEnglish: "Al-Mursalaat", meaningOfName: "The Emissaries", type: "Meccan", order: "33", rukus: "2"),
    SuraDetails(suraNumber: 78, totalVerses: 40, start: "5672", nameInArabic: "النبإ", nameInEnglish: "An-Naba", meaningOfName: "The Announcement", type: "Meccan", order: "80", rukus: "2"),
    SuraDetails(suraNumber: 79, totalVerses: 46, start: "5712", nameInArabic: "النازعات", nameInEnglish: "An-Naazi'aat", meaningOfName: "Those who drag forth", type: "Meccan", order: "81", rukus: "2"),
    SuraDetails(suraNumber: 80, totalVerses: 42, start: "5758", nameInArabic: "عبس", nameInEnglish: "Abasa", meaningOfName: "He frowned", type: "Meccan", order: "24", rukus: "1"),
    SuraDetails(suraNumber: 81, totalVerses: 29, start: "5800", nameInArabic: "التكوير", nameInEnglish: "At-Takwir", meaningOfName: "The Overthrowing", type: "Meccan", order: "7", rukus: "1"),
    SuraDetails(suraNumber: 82, totalVerses: 19, start: "5829", nameInArabic: "الإنفطار", nameInEnglish: "Al-Infitaar", meaningOfName: "The Cleaving", type: "Meccan", order: "82", rukus: "1"),
    SuraDetails(suraNumber: 83, totalVerses: 36, start: "5848", nameInArabic: "المطففين", nameInEnglish: "Al-Mutaffifin", meaningOfName: "Defrauding", type: "Meccan", order: "86", rukus: "1"),
    SuraDetails(suraNumber: 84, totalVerses: 25, start: "5884", nameInArabic: "الإنشقاق", nameInEnglish: "Al-Inshiqaaq", meaningOfName: "The Splitting Open", type: "Meccan", order: "83", rukus: "1"),
    SuraDetails(suraNumber: 85, totalVerses: 22, start: "5909", nameInArabic: "البروج", nameInEnglish: "Al-Burooj", meaningOfName: "The Constellations", type: "Meccan", order: "27", rukus: "1"),
    SuraDetails(suraNumber: 86, totalVerses: 17, start: "5931", nameInArabic: "الطارق", nameInEnglish: "At-Taariq", meaningOfName: "The Morning Star", type: "Meccan", order: "36", rukus: "1"),
    SuraDetails(suraNumber: 87, totalVerses: 19, start: "5948", nameInArabic: "الأعلى", nameInEnglish: "Al-A'laa", meaningOfName: "The Most High", type: "Meccan", order: "8", rukus: "1"),
    SuraDetails(suraNumber: 88, totalVerses: 26, start: "5967", nameInArabic: "الغاشية", nameInEnglish: "Al-Ghaashiya", meaningOfName: "The Overwhelming", type: "Meccan", order: "68", rukus: "1"),
    SuraDetails(suraNumber: 89, totalVerses: 30, start: "5993", nameInArabic: "الفجر", nameInEnglish: "Al-Fajr", meaningOfName: "The Dawn", type: "Meccan", order: "10", rukus: "1"),
    SuraDetails(suraNumber: 90, totalVerses: 20, start: "6023", nameInArabic: "البلد", nameInEnglish: "Al-Balad", meaningOfName: "The City", type: "Meccan", order: "35", rukus: "1"),
    SuraDetails(suraNumber: 91, totalVerses: 15, start: "6043", nameInArabic: "الشمس", nameInEnglish: "Ash-Shams", meaningOfName: "The Sun", type: "Meccan", order: "26", rukus: "1"),
    SuraDetails(suraNumber: 92, totalVerses: 21, start: "6058", nameInArabic: "الليل", nameInEnglish: "Al-Lail", meaningOfName: "The Night", type: "Meccan", order: "9", rukus: "1"),
    SuraDetails(suraNumber: 93, totalVerses: 11, start: "6079", nameInArabic: "الضحى", nameInEnglish: "Ad-Dhuhaa", meaningOfName: "The Morning Hours", type: "Meccan", order: "11", rukus: "1"),
    SuraDetails(suraNumber: 94, totalVerses: 8, start: "6090", nameInArabic: "الشرح", nameInEnglish: "Ash-Sharh", meaningOfName: "The Consolation", type: "Meccan", order: "12", rukus: "1"),
    SuraDetails(suraNumber: 95, totalVerses: 8, start: "6098", nameInArabic: "التين", nameInEnglish: "At-Tin", meaningOfName: "The Fig", type: "Meccan", order: "28", rukus: "1"),
    SuraDetails(suraNumber: 96, totalVerses: 19, start: "6106", nameInArabic: "العلق", nameInEnglish: "Al-Alaq", meaningOfName: "The Clot", type: "Meccan", order: "1", rukus: "1"),
    SuraDetails(suraNumber: 97, totalVerses: 5, start: "6125", nameInArabic: "القدر", nameInEnglish: "Al-Qadr", meaningOfName: "The Power, Fate", type: "Meccan", order: "25", rukus: "1"),
    SuraDetails(suraNumber: 98, totalVerses: 8, start: "6130", nameInArabic: "البينة", nameInEnglish: "Al-Bayyina", meaningOfName: "The Evidence", type: "Medinan", order: "100", rukus: "1"),
    SuraDetails(suraNumber: 99, totalVerses: 8, start: "6138", nameInArabic: "الزلزلة", nameInEnglish: "Az-Zalzala", meaningOfName: "The Earthquake", type: "Medinan", order: "93", rukus: "1"),
    SuraDetails(suraNumber: 100, totalVerses: 11, start: "6146", nameInArabic: "العاديات", nameInEnglish: "Al-Aadiyaat", meaningOfName: "The Chargers", type: "Meccan", order: "14", rukus: "1"),
    SuraDetails(suraNumber: 101, totalVerses: 11, start: "6157", nameInArabic: "القارعة", nameInEnglish: "Al-Qaari'a", meaningOfName: "The Calamity", type: "Meccan", order: "30", rukus: "1"),
    SuraDetails(suraNumber: 102, totalVerses: 8, start: "6168", nameInArabic: "التكاثر", nameInEnglish: "At-Takaathur", meaningOfName: "Competition", type: "Meccan", order: "16", rukus: "1"),
    SuraDetails(suraNumber: 103, totalVerses: 3, start: "6176", nameInArabic: "العصر", nameInEnglish: "Al-Asr", meaningOfName: "The Declining Day, Epoch", type: "Meccan", order: "13", rukus: "1"),
    SuraDetails(suraNumber: 104, totalVerses: 9, start: "6179", nameInArabic: "الهمزة", nameInEnglish: "Al-Humaza", meaningOfName: "The Traducer", type: "Meccan", order: "32", rukus: "1"),
    SuraDetails(suraNumber: 105, totalVerses: 5, start: "6188", nameInArabic: "الفيل", nameInEnglish: "Al-Fil", meaningOfName: "The Elephant", type: "Meccan", order: "19", rukus: "1"),
    SuraDetails(suraNumber: 106, totalVerses: 4, start: "6193", nameInArabic: "قريش", nameInEnglish: "Quraish", meaningOfName: "Quraysh", type: "Meccan", order: "29", rukus: "1"),
    SuraDetails(suraNumber: 107, totalVerses: 7, start: "6197", nameInArabic: "الماعون", nameInEnglish: "Al-Maa'un", meaningOfName: "Almsgiving", type: "Meccan", order: "17", rukus: "1"),
    SuraDetails(suraNumber: 108, totalVerses: 3, start: "6204", nameInArabic: "الكوثر", nameInEnglish: "Al-Kawthar", meaningOfName: "Abundance", type: "Meccan", order: "15", rukus: "1"),
    SuraDetails(suraNumber: 109, totalVerses: 6, start: "6207", nameInArabic: "الكافرون", nameInEnglish: "Al-Kaafiroon", meaningOfName: "The Disbelievers", type: "Meccan", order: "18", rukus: "1"),
    SuraDetails(suraNumber: 110, totalVerses: 3, start: "6213", nameInArabic: "النصر", nameInEnglish: "An-Nasr", meaningOfName: "Divine Support", type: "Medinan", order: "114", rukus: "1"),
    SuraDetails(suraNumber: 111, totalVerses: 5, start: "6216", nameInArabic: "المسد", nameInEnglish: "Al-Masad", meaningOfName: "The Palm Fibre", type: "Meccan", order: "6", rukus: "1"),
    SuraDetails(suraNumber: 112, totalVerses: 4, start: "6221", nameInArabic: "الإخلاص", nameInEnglish: "Al-Ikhlaas", meaningOfName: "Sincerity", type: "Meccan", order: "22", rukus: "1"),
    SuraDetails(suraNumber: 113, totalVerses: 5, start: "6225", nameInArabic: "الفلق", nameInEnglish: "Al-Falaq", meaningOfName: "The Dawn", type: "Meccan", order: "20", rukus: "1"),
    SuraDetails(suraNumber: 114, totalVerses: 6, start: "6230", nameInArabic: "الناس", nameInEnglish: "An-Naas", meaningOfName: "Mankind", type: "Meccan", order: "21", rukus: "1"),

  ];
}
