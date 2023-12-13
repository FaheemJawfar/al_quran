import 'package:al_quran/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:provider/provider.dart';
import 'app_config/app_config.dart';
import 'utils/shared_preferences.dart';
import '../providers/quran_provider.dart';
import 'introduction/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences.initialize();

  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.faheemapps.al_quran.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuranProvider()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          title: AppConfig.appName,
          debugShowCheckedModeBanner: false,
          theme: context.watch<QuranProvider>().quranTheme,
          home: AppPreferences.getString('selectedTranslation') == null ? const OnboardingScreen():const SplashScreen(),
        );
      }),
    );
  }
}
