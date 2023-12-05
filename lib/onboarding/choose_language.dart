import 'package:flutter/material.dart';

import '../translation/translation.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Choose your translation language',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Material(
            child: ListView.builder(
              itemCount: Translation.uniqueLanguages().length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {

                  },
                  tileColor: Colors.transparent,
                  title: Text(Translation.uniqueLanguages()[index]),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
