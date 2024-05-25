import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUtils {
  static late SharedPreferences preferences;

  static Future<bool> clear() async {
    return await preferences.clear();
  }

  static bool? containsKey(String key) {
    return preferences.containsKey(key);
  }

  static dynamic get(String key) {
    return preferences.get(key);
  }

  static bool? getBool(String key) {
    return preferences.getBool(key);
  }

  static double? getDouble(String key) {
    return preferences.getDouble(key);
  }

  static int? getInt(String key) {
    return preferences.getInt(key);
  }

  static Set<String> getKeys() {
    return preferences.getKeys();
  }

  static String? getString(String key) {
    return preferences.getString(key);
  }

  static List<String>? getStringList(String key) {
    return preferences.getStringList(key);
  }

  static Future<void> reload() async {
    return await preferences.reload();
  }

  static Future<bool> remove(String key) async {
    return await preferences.remove(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    return await preferences.setBool(key, value);
  }

  static Future<bool> setDouble(String key, double value) async {
    return await preferences.setDouble(key, value);
  }

  static Future<bool> setInt(String key, int value) async {
    return await preferences.setInt(key, value);
  }

  static Future<bool> setString(String key, String value) async {
    return await preferences.setString(key, value);
  }

  static Future<bool> setStringList(String key, List<String> value) async {
    return await preferences.setStringList(key, value);
  }

  ///Singleton factory
  static final PreferencesUtils _instance = PreferencesUtils._internal();

  factory PreferencesUtils() {
    return _instance;
  }

  PreferencesUtils._internal();
}
