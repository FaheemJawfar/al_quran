import 'package:al_quran/providers/quran_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../translation/translation.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    final quranProvider = Provider.of<QuranProvider>(context, listen: true);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Choose your language',
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
            itemCount: Translation.uniqueLanguages().length,
            itemBuilder: (context, index) {
              final language = Translation.uniqueLanguages()[index];
              return CheckboxListTile(
                value: quranProvider.onboardSelectedLanguage == language,
                onChanged: (newValue) {
                  setState(() {
                    quranProvider.onboardSelectedLanguage =
                        newValue != null && newValue ? language : null;
                  });
                },
                tileColor: const Color(0xffFFE5DE),
                title: Text(language),
              );
            },
          ),
        ),
      ],
    );
  }
}
