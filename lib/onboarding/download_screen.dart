import 'package:al_quran/utils/shared_preferences.dart';
import 'package:flutter/material.dart';

import '../introduction/splash_screen.dart';
import '../translation/translation.dart';
import 'download_progress.dart';


class DownloadScreen extends StatefulWidget {
  final Translation selectedTranslation;

  const DownloadScreen({super.key, required this.selectedTranslation});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DownloadProgressPopup(fileName: widget.selectedTranslation.fileName, onComplete: () {
                AppPreferences.setString('selectedTranslation',  widget.selectedTranslation.fileName);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SplashScreen()),
                );
              },)

            ],
          ),
        ),
      ),
    );
  }
}