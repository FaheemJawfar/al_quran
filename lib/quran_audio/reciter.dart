class Reciter {
  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;

  Reciter({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
  });

  factory Reciter.fromJson(Map<String, dynamic> json) => Reciter(
    identifier: json["identifier"],
    language: json["language"],
    name: json["name"],
    englishName: json["englishName"],
    format: json["format"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier,
    "language": language,
    "name": name,
    "englishName": englishName,
    "format": format,
    "type": type,
  };


  static final recitersJsonList = [
    {
      "identifier": "alafasy-pj",
      "language": "ta",
      "name": "மிஷாரி ராஷித் அல்-அபாஸி",
      "englishName": "Mishary Rashid Al-Afasy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "abdur-rahman-qiraath-and-tamil",
      "language": "ta",
      "name": "தீருவை அப்துர் ரஹ்மான்",
      "englishName": "Professor Abdur Rahman",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "al-husary-ismail-imdadi",
      "language": "ta",
      "name": "முஹம்மத் இஸ்மாயில் இம்தாதி",
      "englishName": "Mahmoud Khalil Al-Husary & Muhammed Ismail Imdadi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "abdur-rahman-tamil-only",
      "language": "ta",
      "name": "தீருவை அப்துர் ரஹ்மான் - தமிழில் மட்டும்",
      "englishName": "Professor Abdur Rahman",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulazizazzahrani",
      "language": "ar",
      "name": "Abdulaziz Az-Zahrani",
      "englishName": "Abdulaziz Az-Zahrani",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulbariaththubaity",
      "language": "ar",
      "name": "AbdulBari ath-Thubaity",
      "englishName": "AbdulBari ath-Thubaity",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulbarimohammed",
      "language": "ar",
      "name": "Abdul Bari Mohammed",
      "englishName": "Abdul Bari Mohammed",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulbasitmujawwad",
      "language": "ar",
      "name": "AbdulBaset AbdulSamad [Mujawwad]",
      "englishName": "AbdulBaset AbdulSamad [Mujawwad]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulbasitmurattal",
      "language": "ar",
      "name": "AbdulBaset AbdulSamad [Murattal]",
      "englishName": "AbdulBaset AbdulSamad [Murattal]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulkareemalhazmi",
      "language": "ar",
      "name": "Abdul-Kareem al-Hazmi",
      "englishName": "Abdul-Kareem al-Hazmi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdullahalmatrood",
      "language": "ar",
      "name": "Abdullah al-Matrood",
      "englishName": "Abdullah al-Matrood",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdullahawadaljuhani",
      "language": "ar",
      "name": "Abdullah Juhany",
      "englishName": "Abdullah Juhany",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdullahbasfar",
      "language": "ar",
      "name": "Abdullah Basfar",
      "englishName": "Abdullah Basfar",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdullahkhayat",
      "language": "ar",
      "name": "Abdullah Khayat",
      "englishName": "Abdullah Khayat",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdullahkhulaifi",
      "language": "ar",
      "name": "Abdullah Khulayfee",
      "englishName": "Abdullah Khulayfee",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulmohsenalharthy",
      "language": "ar",
      "name": "Abdulmohsen Al-Harthy",
      "englishName": "Abdulmohsen Al-Harthy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulmuhsinalqasim",
      "language": "ar",
      "name": "AbdulMuhsin al-Qasim",
      "englishName": "AbdulMuhsin al-Qasim",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulmunimabdulmubdi",
      "language": "ar",
      "name": "Abdul-Mun'im Abdul-Mubdi'",
      "englishName": "Abdul-Mun'im Abdul-Mubdi'",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdulwadoodhaneef",
      "language": "ar",
      "name": "AbdulWadood Haneef",
      "englishName": "AbdulWadood Haneef",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdurrasheedsufiabialhaarithanalkasaaee",
      "language": "ar",
      "name": "Abdur-Rashid Sufi [Abi al-Haarith an al-Kasaa\u2019ee]",
      "englishName": "Abdur-Rashid Sufi [Abi al-Haarith an al-Kasaa\u2019ee]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdurrasheedsufiaddoorianabiamr",
      "language": "ar",
      "name": "Abdur-Rashid Sufi [ad-Doori an Abi Amr]",
      "englishName": "Abdur-Rashid Sufi [ad-Doori an Abi Amr]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdurrasheedsufishubahanasim",
      "language": "ar",
      "name": "Abdur-Rashid Sufi [Shu'bah an Asim]",
      "englishName": "Abdur-Rashid Sufi [Shu'bah an Asim]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdurrasheedsufisoosi",
      "language": "ar",
      "name": "Abdurrashid Sufi [Soosi]",
      "englishName": "Abdurrashid Sufi [Soosi]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abdurrazaqbinabtanaldulaimi",
      "language": "ar",
      "name": "Abdur Razaq Bin Abtan Al Dulaimi",
      "englishName": "Abdur Razaq Bin Abtan Al Dulaimi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abuabdullahmuniraltounsi",
      "language": "ar",
      "name": "Abu Abdullah Munir Al Tounsi",
      "englishName": "Abu Abdullah Munir Al Tounsi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.abubakraldhabi",
      "language": "ar",
      "name": "Abu Bakr al Dhabi",
      "englishName": "Abu Bakr al Dhabi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.adilkalbani",
      "language": "ar",
      "name": "Adel Kalbani",
      "englishName": "Adel Kalbani",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmadalhawashy",
      "language": "ar",
      "name": "Ahmad Al Hawashy",
      "englishName": "Ahmad Al Hawashy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmadalnufais",
      "language": "ar",
      "name": "Ahmad Alnufais",
      "englishName": "Ahmad Alnufais",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmadkhaderaltarabulsi",
      "language": "ar",
      "name": "Ahmad Khader Al-Tarabulsi",
      "englishName": "Ahmad Khader Al-Tarabulsi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmadsulaiman",
      "language": "ar",
      "name": "Ahmad Suleiman",
      "englishName": "Ahmad Suleiman",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedalajmi",
      "language": "ar",
      "name": "Ahmed ibn Ali al-Ajamy",
      "englishName": "Ahmed ibn Ali al-Ajamy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedalhammad",
      "language": "ar",
      "name": "Ahmed Al Hammad",
      "englishName": "Ahmed Al Hammad",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedalmisbahi",
      "language": "ar",
      "name": "Ahmed Al Misbahi",
      "englishName": "Ahmed Al Misbahi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedamir",
      "language": "ar",
      "name": "Ahmed Amir",
      "englishName": "Ahmed Amir",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedmohamedsalama",
      "language": "ar",
      "name": "Ahmed Mohamed Salama",
      "englishName": "Ahmed Mohamed Salama",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ahmedsaber",
      "language": "ar",
      "name": "Ahmed Saber",
      "englishName": "Ahmed Saber",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alafasy",
      "language": "ar",
      "name": "Mishary Rashid Alafasy",
      "englishName": "Mishary Rashid Alafasy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alashryomran",
      "language": "ar",
      "name": "Al Ashry Omran",
      "englishName": "Al Ashry Omran",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alfatehmuhammadzubair",
      "language": "ar",
      "name": "Al Fateh Muhammad Zubair",
      "englishName": "Al Fateh Muhammad Zubair",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alhusaynialazazi",
      "language": "ar",
      "name": "Al Husayni Al Azazi",
      "englishName": "Al Husayni Al Azazi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alhusaynialazazichildren",
      "language": "ar",
      "name": "Al Husayni Al Azazi - Children",
      "englishName": "Al Husayni Al Azazi - Children",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.aliabdurrahmanalhuthaify",
      "language": "ar",
      "name": "Ali Abdur-Rahman al-Huthaify",
      "englishName": "Ali Abdur-Rahman al-Huthaify",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.aliabdurrahmanalhuthaifyqaloon",
      "language": "ar",
      "name": "Ali al-Huthaify [Qaaloon]",
      "englishName": "Ali al-Huthaify [Qaaloon]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alihajjajsouissi",
      "language": "ar",
      "name": "Ali Hajjaj Souissi",
      "englishName": "Ali Hajjaj Souissi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.alzainmohamedahmed",
      "language": "ar",
      "name": "Alzain Mohammad Ahmad",
      "englishName": "Alzain Mohammad Ahmad",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.aymanswed",
      "language": "ar",
      "name": "Ayman Swed",
      "englishName": "Ayman Swed",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.azizalili",
      "language": "ar",
      "name": "Aziz Alili",
      "englishName": "Aziz Alili",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.bandarbalila",
      "language": "ar",
      "name": "Bandar Balila",
      "englishName": "Bandar Balila",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.basselabdulrahmanraoui",
      "language": "ar",
      "name": "Bassel Abdul Rahman Raoui",
      "englishName": "Bassel Abdul Rahman Raoui",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.darwishfarajdarwishalattar",
      "language": "ar",
      "name": "Darwish Faraj Darwish Al Attar",
      "englishName": "Darwish Faraj Darwish Al Attar",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.eidhassanabuaachra",
      "language": "ar",
      "name": "Eid Hassan Abu Aachra",
      "englishName": "Eid Hassan Abu Aachra",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.emadalmansary",
      "language": "ar",
      "name": "Emad Al Mansary",
      "englishName": "Emad Al Mansary",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ezzatsabri",
      "language": "ar",
      "name": "Ezzat Sabri",
      "englishName": "Ezzat Sabri",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.faresabbad",
      "language": "ar",
      "name": "Fares Abbad",
      "englishName": "Fares Abbad",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.fouadalkhamiri",
      "language": "ar",
      "name": "Fouad Al Khamiri",
      "englishName": "Fouad Al Khamiri",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.hamadsinan",
      "language": "ar",
      "name": "Hamad Sinan",
      "englishName": "Hamad Sinan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.hamdyalsayedtolbasaad",
      "language": "ar",
      "name": "Hamdy Al Sayed Tolba Saad",
      "englishName": "Hamdy Al Sayed Tolba Saad",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.haniarrifai",
      "language": "ar",
      "name": "Hani ar-Rifai",
      "englishName": "Hani ar-Rifai",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.hasanhashem",
      "language": "ar",
      "name": "Hasan Hashem",
      "englishName": "Hasan Hashem",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.hassansaleh",
      "language": "ar",
      "name": "Hasan Saleh",
      "englishName": "Hasan Saleh",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.hatemfarid",
      "language": "ar",
      "name": "hatemfarid",
      "englishName": "hatemfarid",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ibrahimalakhdar",
      "language": "ar",
      "name": "Ibrahim Al Akhdar",
      "englishName": "Ibrahim Al Akhdar",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ibrahimaldossari",
      "language": "ar",
      "name": "Ibrahim Al Dossari",
      "englishName": "Ibrahim Al Dossari",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ibrahimaljormy",
      "language": "ar",
      "name": "Ibrahim Aljormy",
      "englishName": "Ibrahim Aljormy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.ilhantok",
      "language": "ar",
      "name": "Ilhan Tok",
      "englishName": "Ilhan Tok",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.imadzuhairhafez",
      "language": "ar",
      "name": "Imad Zuhair Hafez",
      "englishName": "Imad Zuhair Hafez",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.jaberabdulhameed",
      "language": "ar",
      "name": "Jaber Abdul Hameed",
      "englishName": "Jaber Abdul Hameed",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.jamaanalosaimi",
      "language": "ar",
      "name": "Jamaan Alosaimi",
      "englishName": "Jamaan Alosaimi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.jamalshakerabdullah",
      "language": "ar",
      "name": "Jamal Shaker Abdullah",
      "englishName": "Jamal Shaker Abdullah",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.jazzaalswaileh",
      "language": "ar",
      "name": "Jazza Alswaileh",
      "englishName": "Jazza Alswaileh",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.kamel",
      "language": "ar",
      "name": "Abdallah Kamel",
      "englishName": "Abdallah Kamel",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.karimmansouri",
      "language": "ar",
      "name": "Karim Mansouri",
      "englishName": "Karim Mansouri",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khaledalqahtani",
      "language": "ar",
      "name": "Khaalid Abdullaah al-Qahtaanee",
      "englishName": "Khaalid Abdullaah al-Qahtaanee",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khaledbarakat",
      "language": "ar",
      "name": "Khaled Barakat",
      "englishName": "Khaled Barakat",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khalidabdulkafi",
      "language": "ar",
      "name": "Khalid Abdulkhafi",
      "englishName": "Khalid Abdulkhafi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khalidaljalil",
      "language": "ar",
      "name": "Khalid Al Jalil",
      "englishName": "Khalid Al Jalil",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khalidalmohanna",
      "language": "ar",
      "name": "Khalid Al-Moh'n'na",
      "englishName": "Khalid Al-Moh'n'na",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.khalifaaltunaiji",
      "language": "ar",
      "name": "Khalifah At-Tonaeijy",
      "englishName": "Khalifah At-Tonaeijy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.laayounelkouchi",
      "language": "ar",
      "name": "Laayoun El Kouchi",
      "englishName": "Laayoun El Kouchi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.lesaintcorantraduitenfrancais",
      "language": "ar",
      "name": "Le Saint Coran Traduit En Francais",
      "englishName": "Le Saint Coran Traduit En Francais",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahershakhashiro",
      "language": "ar",
      "name": "Maher Shakhashero",
      "englishName": "Maher Shakhashero",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahmoodalrifai",
      "language": "ar",
      "name": "Mahmod Alrifai",
      "englishName": "Mahmod Alrifai",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahmoudalialbanna",
      "language": "ar",
      "name": "Mahmud Ali Al Banna",
      "englishName": "Mahmud Ali Al Banna",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahmoudelsheimy",
      "language": "ar",
      "name": "Mahmoud El Sheimy",
      "englishName": "Mahmoud El Sheimy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahmoudsaaddarouich",
      "language": "ar",
      "name": "Mahmoud Saad Darouich",
      "englishName": "Mahmoud Saad Darouich",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mahmoudsayedeltayeb",
      "language": "ar",
      "name": "Mahmoud Sayed Eltayeb",
      "englishName": "Mahmoud Sayed Eltayeb",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.misharyrashidalafasy",
      "language": "ar",
      "name": "Mishary Rashid Alafasy",
      "englishName": "Mishary Rashid Alafasy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.moeedhalharthi",
      "language": "ar",
      "name": "Moeedh Al-Harthi",
      "englishName": "Moeedh Al-Harthi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedabdelaziz",
      "language": "ar",
      "name": "Mohamed Abdelaziz",
      "englishName": "Mohamed Abdelaziz",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedabdelhakimsaadalabdullah",
      "language": "ar",
      "name": "Mohamed Abdel Hakim Saad Al Abdullah",
      "englishName": "Mohamed Abdel Hakim Saad Al Abdullah",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedaljaberyalheyani",
      "language": "ar",
      "name": "Mohamed Aljabery Al Heyani",
      "englishName": "Mohamed Aljabery Al Heyani",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedalmohisni",
      "language": "ar",
      "name": "Mohamed Al Mohisni",
      "englishName": "Mohamed Al Mohisni",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedelkantaoui",
      "language": "ar",
      "name": "Mohamed El Kantaoui",
      "englishName": "Mohamed El Kantaoui",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedhassan",
      "language": "ar",
      "name": "Muhammad Hassan",
      "englishName": "Muhammad Hassan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedmaabad",
      "language": "ar",
      "name": "Mohamed Maabad",
      "englishName": "Mohamed Maabad",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedosmankhan",
      "language": "ar",
      "name": "Mohammed Osman Khan (from India)",
      "englishName": "Mohammed Osman Khan (from India)",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedshaabanabuqarn",
      "language": "ar",
      "name": "Mohamed Shaaban Abu Qarn",
      "englishName": "Mohamed Shaaban Abu Qarn",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohamedtablawi",
      "language": "ar",
      "name": "Mohamed Al-Tablawi",
      "englishName": "Mohamed Al-Tablawi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohammadismaeelalmuqaddim",
      "language": "ar",
      "name": "Mohammad Ismaeel Al-Muqaddim",
      "englishName": "Mohammad Ismaeel Al-Muqaddim",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohammadrachadalshareef",
      "language": "ar",
      "name": "Mohammad Rachad Al Shareef",
      "englishName": "Mohammad Rachad Al Shareef",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mohammedbinsalehabuzaid",
      "language": "ar",
      "name": "Mohammed Bin Saleh Abu Zaid",
      "englishName": "Mohammed Bin Saleh Abu Zaid",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muftahalsaltany",
      "language": "ar",
      "name": "Moftah AlSultany",
      "englishName": "Moftah AlSultany",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadabdulkareem",
      "language": "ar",
      "name": "Muhammad AbdulKareem",
      "englishName": "Muhammad AbdulKareem",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadalaalimaldokali",
      "language": "ar",
      "name": "Muhammad Al Aalim Al Dokali",
      "englishName": "Muhammad Al Aalim Al Dokali",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadalluhaidan",
      "language": "ar",
      "name": "Mohammad Al-Haid'an",
      "englishName": "Mohammad Al-Haid'an",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadalmehysni",
      "language": "ar",
      "name": "Muhammad al-Muhaisny",
      "englishName": "Muhammad al-Muhaisny",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadalsubayyil",
      "language": "ar",
      "name": "Muhammad Subbayil",
      "englishName": "Muhammad Subbayil",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadanwarshahat",
      "language": "ar",
      "name": "Muhammad Anwar Shahat",
      "englishName": "Muhammad Anwar Shahat",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadayyub",
      "language": "ar",
      "name": "Mohammad Ayyub",
      "englishName": "Mohammad Ayyub",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadsalehalimshah",
      "language": "ar",
      "name": "Mohammad Saleh Shah",
      "englishName": "Mohammad Saleh Shah",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadsiddiqalminshawimujawwad",
      "language": "ar",
      "name": "Muhammad Siddeeq al-Minshawi [Mujawwad]",
      "englishName": "Muhammad Siddeeq al-Minshawi [Mujawwad]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.muhammadsulaimanpatel",
      "language": "ar",
      "name": "Muhammad Sulaiman Patel",
      "englishName": "Muhammad Sulaiman Patel",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.musabilal",
      "language": "ar",
      "name": "Musa Bilal",
      "englishName": "Musa Bilal",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mustafaallahouni",
      "language": "ar",
      "name": "Mustafa Al-Lahoni",
      "englishName": "Mustafa Al-Lahoni",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mustafaismail",
      "language": "ar",
      "name": "Mostafa Ismaeel",
      "englishName": "Mostafa Ismaeel",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mustafaraadalazzawi",
      "language": "ar",
      "name": "Mustafa Ra'ad Al-Azawi",
      "englishName": "Mustafa Ra'ad Al-Azawi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.mustaphagharbi",
      "language": "ar",
      "name": "Mustapha Gharbi",
      "englishName": "Mustapha Gharbi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.nabilarrifai",
      "language": "ar",
      "name": "Nabil Ar-Rifa'i",
      "englishName": "Nabil Ar-Rifa'i",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.nasseralqatami",
      "language": "ar",
      "name": "Nasser Alqatami",
      "englishName": "Nasser Alqatami",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.neamahalhassan",
      "language": "ar",
      "name": "N'amah Alhassan",
      "englishName": "N'amah Alhassan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.obeikan",
      "language": "ar",
      "name": "Abdul Mohsen Al Obeikan",
      "englishName": "Abdul Mohsen Al Obeikan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.oimaoqataris",
      "language": "ar",
      "name": "Oimao Qataris",
      "englishName": "Oimao Qataris",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.omaralkazabri",
      "language": "ar",
      "name": "Omar Al Kazabri",
      "englishName": "Omar Al Kazabri",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.osamabinalialghanim",
      "language": "ar",
      "name": "Osama Bin Ali Al Ghanim",
      "englishName": "Osama Bin Ali Al Ghanim",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.rachidbelalia",
      "language": "ar",
      "name": "Rachid Belalia",
      "englishName": "Rachid Belalia",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.saberabdulhakam",
      "language": "ar",
      "name": "Saber Abdul-hakam",
      "englishName": "Saber Abdul-hakam",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.sadaqatali",
      "language": "ar",
      "name": "Sadaqat Ali",
      "englishName": "Sadaqat Ali",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.sahlyasin",
      "language": "ar",
      "name": "Sahl Yaaseen",
      "englishName": "Sahl Yaaseen",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.saidalshaalan",
      "language": "ar",
      "name": "Said Al Shaalan",
      "englishName": "Said Al Shaalan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.salahalbudair",
      "language": "ar",
      "name": "Salah Al-Budair",
      "englishName": "Salah Al-Budair",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.salahalhashem",
      "language": "ar",
      "name": "Salah Alhashim",
      "englishName": "Salah Alhashim",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.salahbaothman",
      "language": "ar",
      "name": "Salah Baothman",
      "englishName": "Salah Baothman",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.samirbelaachya",
      "language": "ar",
      "name": "Samir Belaachya",
      "englishName": "Samir Belaachya",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.saudalshuraim",
      "language": "ar",
      "name": "Sa'ud al-Shuraym",
      "englishName": "Sa'ud al-Shuraym",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.sayedramadan",
      "language": "ar",
      "name": "Sheikh Syed Ramadan",
      "englishName": "Sheikh Syed Ramadan",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.shahriarparhizgar",
      "language": "ar",
      "name": "Shahriar Parhizgar",
      "englishName": "Shahriar Parhizgar",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.sudaisshuraymnaeemsultan",
      "language": "ar",
      "name": "Shaykh Sudais and Shaykh Shuraim with Naeem Sultan [Pickthall Translation]",
      "englishName": "Shaykh Sudais and Shaykh Shuraim with Naeem Sultan [Pickthall Translation]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.tamerislam",
      "language": "ar",
      "name": "Tamer Islam",
      "englishName": "Tamer Islam",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.tareqabdulganidaawob",
      "language": "ar",
      "name": "Tareq Daawob",
      "englishName": "Tareq Daawob",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.tawfeeqassayegh",
      "language": "ar",
      "name": "Tawfeeq As-Sayegh",
      "englishName": "Tawfeeq As-Sayegh",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.turkiebeidalmarri",
      "language": "ar",
      "name": "Turki Ebeid Al Marri",
      "englishName": "Turki Ebeid Al Marri",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.waeldesouky",
      "language": "ar",
      "name": "Wael Desouky",
      "englishName": "Wael Desouky",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.waelradwanqureshi",
      "language": "ar",
      "name": "Wael Radwan Qureshi",
      "englishName": "Wael Radwan Qureshi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.waleedidreesalmaneese",
      "language": "ar",
      "name": "Waleed Idrees Al Maneese",
      "englishName": "Waleed Idrees Al Maneese",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.waleednaehi",
      "language": "ar",
      "name": "Waleed AlNa'ehi",
      "englishName": "Waleed AlNa'ehi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.waleedsamiraliabdulmajidsorour",
      "language": "ar",
      "name": "Waleed Samir Ali Abdul Majid Sorour",
      "englishName": "Waleed Samir Ali Abdul Majid Sorour",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.walidalshatti",
      "language": "ar",
      "name": "Walid Al Shatti",
      "englishName": "Walid Al Shatti",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.walidfathibashta",
      "language": "ar",
      "name": "Walid Fathi Bashta",
      "englishName": "Walid Fathi Bashta",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yahyahawwa",
      "language": "ar",
      "name": "Yahya Hawwa",
      "englishName": "Yahya Hawwa",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yassenaljazairi",
      "language": "ar",
      "name": "Yassen Al Jazairi",
      "englishName": "Yassen Al Jazairi",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yasseraldossari",
      "language": "ar",
      "name": "Yasser Al_Dosari",
      "englishName": "Yasser Al_Dosari",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yasseralmazroyee",
      "language": "ar",
      "name": "Yasser Al-Mazroey",
      "englishName": "Yasser Al-Mazroey",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yasserqureshi",
      "language": "ar",
      "name": "Yasser AlKurashy",
      "englishName": "Yasser AlKurashy",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yassersalama",
      "language": "ar",
      "name": "Yasser Salama",
      "englishName": "Yasser Salama",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yassersarhaneldeeb",
      "language": "ar",
      "name": "Yasser Sarhan Eldeeb",
      "englishName": "Yasser Sarhan Eldeeb",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yousufalshoaey",
      "language": "ar",
      "name": "Yousef Al-Shoowayie'e",
      "englishName": "Yousef Al-Shoowayie'e",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "ar.yousufbinnoahahmad",
      "language": "ar",
      "name": "Yusuf Bin Noah Ahmed",
      "englishName": "Yusuf Bin Noah Ahmed",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "en.misharyrashidalafasyenglishtranslationsaheehibrahimwalk",
      "language": "ar",
      "name": "Mishaari Raashid with Ibrahim Walk [Saheeh Intl Translation]",
      "englishName": "Mishaari Raashid with Ibrahim Walk [Saheeh Intl Translation]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "en.muhammadayyubenglishtranslationmuhsinkhanmikaalwaters",
      "language": "ar",
      "name": "Muhammad Ayoob with Mikaal Waters [Muhsin Khan Translation]",
      "englishName": "Muhammad Ayoob with Mikaal Waters [Muhsin Khan Translation]",
      "format": "audio",
      "type": "surahbysurah"
    },
    {
      "identifier": "en.sudaisandshuraymenglishtranslationpickthallaslamathar",
      "language": "ar",
      "name": "Sodais and Shuraim with Aslam Athar [Pickthall Translation]",
      "englishName": "Sodais and Shuraim with Aslam Athar [Pickthall Translation]",
      "format": "audio",
      "type": "surahbysurah"
    }
  ];

}




