import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quran_provider.dart';
import '../translation/translation.dart';

class ChooseTranslationScreen extends StatefulWidget {
  const ChooseTranslationScreen({super.key});

  @override
  State<ChooseTranslationScreen> createState() =>
      _ChooseTranslationScreenState();
}

class _ChooseTranslationScreenState extends State<ChooseTranslationScreen> {
  @override
  Widget build(BuildContext context) {
    final quranProvider = Provider.of<QuranProvider>(context, listen: true);
    final translationList = Translation.findTranslationsByLanguage(
        quranProvider.onboardSelectedLanguage!);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Choose a translation',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        const Divider(),
        //const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: translationList.length,
            itemBuilder: (context, index) {
              final translation = translationList[index]['nameInLanguage'];
              return CheckboxListTile(
                value: quranProvider.onboardSelectedTranslation == translation,
                onChanged: (newValue) {
                  setState(() {
                    quranProvider.onboardSelectedTranslation = newValue !=
                                null &&
                            newValue
                        ? translation
                        : null; // Set selectedLanguage to the chosen language or null if unchecked
                  });
                },
                tileColor: const Color(0xffDCF6E6),
                title: Text(translation),
              );
            },
          ),
        ),
      ],
    );
  }
}
