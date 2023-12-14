import 'package:al_quran/common_widgets/show_toast.dart';
import 'package:al_quran/onboarding/choose_language.dart';
import 'package:al_quran/onboarding/choose_translation.dart';
import 'package:al_quran/onboarding/download_screen.dart';
import 'package:al_quran/onboarding/welcome_onboarding.dart';
import 'package:al_quran/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quran_provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  String? selectedLanguage;
  late final quranProvider = Provider.of<QuranProvider>(context, listen: false);

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Color(0xffDAD3C8),
    Color(0xffFFE5DE),
    Color(0xffDCF6E6),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  List<Widget> onboardingPages = [
    const WelcomeOnboarding(),
    const ChooseLanguageScreen(),
    const ChooseTranslationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors[_currentPage],
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: onboardingPages.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: onboardingPages[i],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingPages.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  if (_currentPage + 1 == onboardingPages.length)
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              _pageController.jumpToPage(1);
                            },
                            style: TextButton.styleFrom(
                              elevation: 0,
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                            child: const Text(
                              "BACK",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              if (checkSelections()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DownloadScreen(selectedTranslation: Translation.findTranslationByFileName(quranProvider.onboardSelectedTranslation!))),
                                );
                              } else {
                                ShowToast.show(
                                    context, 'Please choose a translation');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20),
                              textStyle: const TextStyle(fontSize: 13),
                            ),
                            child: const Text("START"),
                          ),
                        ],
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (checkSelections()) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn,
                                );
                              } else {
                                if (_currentPage == 1) {
                                  ShowToast.show(context,
                                      'Please choose your language to select a translation');
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              textStyle: const TextStyle(fontSize: 13),
                            ),
                            child: const Text("NEXT"),
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool checkSelections() {
    if (_currentPage == 0) {
      return true;
    }
    if (_currentPage == 1 && quranProvider.onboardSelectedLanguage != null) {
      return true;
    }
    if (_currentPage == 2 && quranProvider.onboardSelectedTranslation != null) {
      return true;
    }
    return false;
  }
}
