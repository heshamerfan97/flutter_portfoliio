import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class LanguageUtil {
  static Future<Map<String, dynamic>> loadJson(String path) async {
    String content = await rootBundle.loadString(path);
    return jsonDecode(content);
  }

  ///Singleton factory
  static final LanguageUtil _instance = LanguageUtil._internal();

  factory LanguageUtil() {
    return _instance;
  }

  LanguageUtil._internal();
}
