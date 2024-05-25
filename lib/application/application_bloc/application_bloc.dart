import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/theme/theme_collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_bloc.dart';
import '../../language/app_language.dart';
import '../../language/language.dart';
import '../../language/language_bloc/language_bloc.dart';
import '../../shared/services/preferences/preferences.dart';
import '../../shared/services/preferences/preferences_utils.dart';
import '../application.dart';

part 'application_event.dart';

part 'application_state.dart';


class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationInitial()) {
    on<ApplicationEvent>((event, emit) async {
      if (event is OnSetupApplication) {
        ///Pending loading to UI
        emit(ApplicationWaiting());

        PreferencesUtils.preferences = await SharedPreferences.getInstance();

        ///Read/Save Device Info
        /*Application.deviceType = Platform.isAndroid
            ? 'android'
            : Platform.isIOS
                ? 'ios'
                : 'unknown';
*/

        AppBloc.connectivityCubit.initConnectivity();

        ///Get old Theme & Font & Language
        final oldLanguage = PreferencesUtils.getString(Preferences.language);
        if (oldLanguage != null) {
          AppLanguage.defaultLanguage = Language(
              locale: Locale(oldLanguage),
              textDirection: oldLanguage == 'ar' ? TextDirection.rtl : TextDirection.ltr,
              name: oldLanguage == 'ar'
                  ? "العربية"
                  : oldLanguage == "en"
                  ? "English"
                  : "Français");
        }

        ///Setup Language
        if (oldLanguage != null) {
          AppBloc.languageBloc.add(
            OnChangeLanguage(
                language: AppLanguage.defaultLanguage!),
          );
        }else{
          AppBloc.languageBloc.add(
            OnChangeLanguage(
                language: const Language(
                    locale: Locale("en"),
                    textDirection: TextDirection.ltr,
                    name: "English"
                        )),
          );
        }

        ///Check phone dark option
        final brightness = SchedulerBinding.instance.window.platformBrightness;
        Application.deviceDarkTheme = (brightness == Brightness.dark);


        ///Setup Theme & Font with dark Option
        if(Application.deviceDarkTheme) {
          AppBloc.themeCubit.changeTheme(ThemeCollection().darkThemeData);
        }

        // OrientationHelper.lockScreenToPortraitMode();


        AppBloc.mainScreenCubit.init();
        emit(ApplicationSetupCompleted());
      }

      if (event is OnApplicationFinishedIntro) {
        PreferencesUtils.preferences.setBool(Preferences.firstTime, false);
        emit(ApplicationSetupCompleted());
      }
    });
  }
}
