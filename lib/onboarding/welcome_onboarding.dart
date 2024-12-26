import 'package:flutter/material.dart';


class WelcomeOnboarding extends StatefulWidget {
  const WelcomeOnboarding({super.key});

  @override
  State<WelcomeOnboarding> createState() => _WelcomeOnboardingState();
}

class _WelcomeOnboardingState extends State<WelcomeOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/icon/quran_icon.png',
          height: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'بِسْمِ ٱللَّٰهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            fontFamily: 'Arabic'
          ),
        ),
        const Divider(),
        const SizedBox(height: 15),
        const Text(
          'Please setup your translation language and choose a translation.',
          style: TextStyle(
            //   fontFamily: "Mulish",
            fontWeight: FontWeight.w300,
            fontSize:17,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
