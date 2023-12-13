import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_config/app_config.dart';
import '../app_config/color_config.dart';
import '../app_texts/home_texts.dart';
import 'quran_hadith_about_quran.dart';
import '../common_widgets/loading_indicator.dart';
import '../providers/quran_provider.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  bool translationLoaded = false;
  late final quranProvider =
  Provider.of<QuranProvider>(context, listen: false);
  int selectedQuoteNumber = 0;

  @override
  void initState() {
    getRandomQuoteNumber();
    loadQuranData();
    super.initState();
  }

  void loadQuranData() async {
    setState(() {
      isLoading = true;
    });
    await quranProvider.loadQuranArabic();
    await quranProvider.loadTranslation();
    setState(() {
      translationLoaded = true;
    });
    await Future.delayed(const Duration(seconds: 5));

    setState(() {
      isLoading = false;
    });
  }

  getRandomQuoteNumber() {
    selectedQuoteNumber = Random()
        .nextInt(AboutQuranReferences.allQuranReferences.length);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: isLoading ? _buildSplash(screenWidth, screenHeight) : const HomeScreen(),
      ),
    );
  }

  Widget _buildSplash(double screenWidth, double screenHeight) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            quranProvider.isDarkMode
                ? Colors.black12
                : ColorConfig.backgroundColor,
            quranProvider.isDarkMode
                ? Colors.black45
                : ColorConfig.primaryColor,
            quranProvider.isDarkMode ? Colors.black54 : Colors.blue.shade600,
            quranProvider.isDarkMode ? Colors.black : Colors.blue.shade900,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.02,
          screenHeight * 0.05,
          screenWidth * 0.02,
          screenHeight * 0.05,
        ),
        child: Column(
          children: [
            Image.asset(
              AppConfig.appLogoPath,
              width: screenWidth * 0.3,
              height: screenHeight * 0.15,
            ),
            const SizedBox(height: 20),
            Text(
              HomeTexts.theHolyQuran,
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              HomeTexts.arabicAndTranslation,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.white,
              ),
            ),
            const Divider(),
            const Spacer(),
            if (translationLoaded)
              SizedBox(
                height: screenHeight * 0.3,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        quranProvider
                            .filterOneAyaTranslation(
                          AboutQuranReferences
                              .allQuranReferences[selectedQuoteNumber][0],
                          AboutQuranReferences
                              .allQuranReferences[selectedQuoteNumber][1],
                        )
                            .text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Al Quran (${AboutQuranReferences.allQuranReferences[selectedQuoteNumber][0]}:${AboutQuranReferences.allQuranReferences[selectedQuoteNumber][1]})',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            const Spacer(),
            LoadingIndicator(
              size: screenWidth * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
