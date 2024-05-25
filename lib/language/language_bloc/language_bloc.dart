import 'dart:ui';

import 'package:bloc/bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../application/application.dart';
import '../../shared/services/preferences/preferences.dart';
import '../../shared/services/preferences/preferences_utils.dart';
import '../../utils/logger.dart';
import '../app_language.dart';
import '../language.dart';
import '../language_repository.dart';
import '../language_util.dart';

part 'language_event.dart';

part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  static Map<String, String> localizedStrings = {};

  final LanguageRepository _languageRepository;

  Future<bool> load(Locale locale) async {
    final jsonMap = await LanguageUtil.loadJson(
      "assets/locales/${locale.languageCode}.json",
    );

    localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    Logger.logSuccess(localizedStrings, tag: "🌍 New Strings 🌍");

    return true;
  }

  LanguageBloc({LanguageRepository? languageRepository})
      : _languageRepository = languageRepository ?? LanguageRepository(),
        super(LanguageInitial()) {
    on<LanguageEvent>((event, emit) async {
      if (event is OnChangeLanguage) {
        Application.isArabic = event.language.locale.languageCode == 'ar';
        if (event.language.locale.languageCode ==
            AppLanguage.defaultLanguage?.locale.languageCode) {
          if (localizedStrings.isEmpty) {
            await load(event.language.locale);
          }
          emit(LanguageUpdated(event.language));
        } else {
          emit(LanguageUpdating());
          final success = await load(event.language.locale);
          if (success) {
            AppLanguage.defaultLanguage = event.language;

            ///Preference save
            await PreferencesUtils.setString(
                Preferences.language, event.language.locale.languageCode);
          }
          //TODO: load needed screens when change language
          //AppBloc.homeCubit.loadHome();
          _languageRepository
              .setAppLanguage(AppLanguage.defaultLanguage!.locale.languageCode);
          emit(LanguageUpdated(event.language));
        }
      }
    });
  }
}
