import 'dart:ui';

import 'language.dart';

class AppLanguage {
  ///Default Language
  static Language? defaultLanguage;

  ///List Language support in Application
  static List<Language> supportLanguages = [
    ///English
  const Language(textDirection: TextDirection.ltr, locale: Locale("en") , name: "English"),

    ///Arabic
  const Language(textDirection: TextDirection.ltr, locale: Locale("ar"), name: "العربية"),

    ///French
  const Language(textDirection: TextDirection.ltr, locale: Locale("fr"), name: "Français"),
  ];

  ///Singleton factory
  static final AppLanguage _instance = AppLanguage._internal();

  factory AppLanguage() {
    return _instance;
  }

  AppLanguage._internal();
}
