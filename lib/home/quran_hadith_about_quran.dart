class AboutQuranReferences {
  final String quote;
  final String reference;

  AboutQuranReferences({required this.quote, required this.reference});

  factory AboutQuranReferences.fromJson(Map<String, dynamic> json) {
    return AboutQuranReferences(
      quote: json['verse'] as String,
      reference: json['resource'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'verse': quote,
      'resource': reference,
    };
  }

  static List<AboutQuranReferences> listOfVersesAndHadhiths = [
    AboutQuranReferences(
      quote:
      "Ramaḍân is the month in which the Quran was revealed as a guide for humanity with clear proofs of guidance and the standard ˹to distinguish between right and wrong.",
      reference: "(Al-Quran 2:185)",
    ),
    AboutQuranReferences(
      quote:
      "Indeed, this Qur’ān guides to that which is most suitable and gives good tidings to the believers who do righteous deeds that they will have a great reward",
      reference: "(Al-Quran 17:9)",
    ),
    AboutQuranReferences(
      quote:
      "Blessed is He who sent down the Criterion upon His Servant that he may be to the worlds a warner.",
      reference: "(Al-Quran 25:1)",
    ),
    AboutQuranReferences(
      quote:
      "So when the Qur’ān is recited, then listen to it and pay attention that you may receive mercy.",
      reference: "(Al-Quran 7:204)",
    ),
    AboutQuranReferences(
      quote:
      "And We have certainly made the Qur’ān easy for remembrance, so is there any who will remember?",
      reference: "(Al-Quran 54:32)",
    ),
    AboutQuranReferences(
      quote:
      "Then do they not reflect upon the Qur’ān, or are there locks upon [their] hearts?",
      reference: "(Al-Quran 47:24)",
    ),

    AboutQuranReferences(
      quote:
      "And We send down of the Qur’ān that which is healing and mercy for the believers, but it does not increase the wrongdoers except in loss.",
      reference: "(Al-Quran 17:82)",
    ),
    AboutQuranReferences(
      quote:
      "[It is] a revelation from the Lord of the worlds. And if he [i.e., Muḥammad] had made up about Us some [false] sayings, We would have seized him by the right hand; Then We would have cut from him the aorta.",
      reference: "(Al-Quran 69:43-46)",
    ),

    AboutQuranReferences(
      quote:
      "So when you recite the Qur’ān, [first] seek refuge in Allāh from Satan, the expelled [from His mercy].",
      reference: "(Al-Quran 16:98)",
    ),
    AboutQuranReferences(
      quote:
      "Indeed, it is We who sent down the message [i.e., the Qur’ān], and indeed, We will be its guardian.",
      reference: "(Al-Quran 15:9)",
    ),
    AboutQuranReferences(
      quote: "Or add to it, and recite the Qur’ān with measured recitation.",
      reference: "(Al-Quran 73:4)",
    ),
    AboutQuranReferences(
      quote:
      "Alif, Lām, Rā. [This is] a Book which We have revealed to you, [O Muḥammad], that you might bring mankind out of darknesses into the light by permission of their Lord - to the path of the Exalted in Might, the Praiseworthy",
      reference: "(Al-Quran 14:1)",
    ),

    ///More verses

    AboutQuranReferences(
        quote:
        "This is the Book about which there is no doubt, a guidance for those conscious of Allāh",
        reference: "(Al-Quran 2:2)"),

    AboutQuranReferences(
        quote: "Then upon Us is its clarification [to you].",
        reference: "(Al-Quran 75:19)"),

    AboutQuranReferences(
        quote:
        "Follow, [O mankind], what has been revealed to you from your Lord and do not follow other than Him any allies. Little do you remember.",
        reference: "(Al-Quran 7:3)"),

    AboutQuranReferences(
        quote:
        "And follow what is revealed to you, [O Muḥammad], and be patient until Allāh will judge. And He is the best of judges.",
        reference: "(Al-Quran 10:109)"),

    AboutQuranReferences(
        quote:
        "So when We have recited it [through Gabriel], then follow its recitation.",
        reference: "(Al-Quran 75:18)"),

    AboutQuranReferences(
        quote:
        "And this [Qur’ān] is a Book We have revealed [which is] blessed, so follow it and fear Allāh that you may receive mercy.",
        reference: "(Al-Quran 6:155)"),

    AboutQuranReferences(
        quote:
        "...And whoever does not judge by what Allāh has revealed - then it is those who are the disbelievers.",
        reference: "(Al-Quran 5:44)"),

    AboutQuranReferences(
        quote:
        "Then do they not reflect upon the Qur’ān? If it had been from [any] other than Allāh, they would have found within it much contradiction.",
        reference: "(Al-Quran 4:82)"),

    AboutQuranReferences(
        quote:
        "And We have certainly diversified [the contents] in this Qur’ān that they [i.e., mankind] may be reminded, but it does not increase them [i.e., the disbelievers] except in aversion.",
        reference: "(Al-Quran 17:41)"),

    AboutQuranReferences(
        quote:
        "And We have not revealed to you the Book, [O Muḥammad], except for you to make clear to them that wherein they have differed and as guidance and mercy for a people who believe.",
        reference: "(Al-Quran 16:64)"),

    AboutQuranReferences(
      quote:
      "\"[Whoever recites a letter] from Allah's Book, then he receives the reward from it, and the reward of ten the like of it. I do not say that Alif Lam Mim is a letter, but Alif is a letter, Lam is a letter and Mim is a letter.\". \n- The Messenger of Allah (ﷺ)",
      reference: "(Reference : Jami` at-Tirmidhi 2910)",
    ),

    AboutQuranReferences(
        quote:
        "The best among you [Muslims] are those who learn the Qur’an and teach it. \n- The Messenger of Allah (ﷺ)",
        reference: "(Reference : Al-Bukhari)"),

    AboutQuranReferences(
        quote:
        "Recite the Qur’an, for it will come as an intercessor for its reciters on the Day of Resurrection. \n- The Messenger of Allah (ﷺ)",
        reference: "(Reference : Muslim)"),

    AboutQuranReferences(
        quote:
        "A person who has nothing of the Qur’an in his heart is like a ruined house. \n- The Messenger of Allah (ﷺ)",
        reference: "(Reference : At-Tirmidhi)"),

    AboutQuranReferences(
        quote:
        "Recite the Qur’an, for it will come as an intercessor for its reciters on the Day of Resurrection. \n- The Messenger of Allah (ﷺ)",
        reference: "(Reference : Muslim)"),

    AboutQuranReferences(
        quote:
        "Recite the Qur’an, for it will come as an intercessor for its reciters on the Day of Resurrection. \n- The Messenger of Allah (ﷺ)",
        reference: "(Reference : Muslim)"),
  ];
}
