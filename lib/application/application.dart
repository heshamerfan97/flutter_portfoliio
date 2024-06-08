import 'dart:ui';

import '../language/app_language.dart';

class Application {
  static bool debug = true;
  static String version = '1.0.0';
  static late String deviceType;
  static String? deviceId;

  static List<Color> tiersColor = [
    const Color(0xFFE5E4E2),
    const Color(0xFFB9F2FF),
    const Color(0xFFFFD700),
    const Color(0xFF808080),
    const Color(0xFF808080),
    const Color(0xFFCD7F32),
  ];

  static bool isArabic = AppLanguage.defaultLanguage?.locale.languageCode == 'ar';
  static bool deviceDarkTheme = false;


  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
