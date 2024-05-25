import '../api/api.dart';

class LanguageRepository {
  final API _api;

  LanguageRepository({API? api}) : _api = api ?? API();

  Future<bool> setAppLanguage(String lang) async {
    final res = await _api.appLanguage(lang);
    return res.success;
  }
}
