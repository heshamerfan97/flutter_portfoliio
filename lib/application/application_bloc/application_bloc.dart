import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/theme/theme_collection.dart';

import '../../app_bloc.dart';
import '../../language/language.dart';
import '../../language/language_bloc/language_bloc.dart';
import '../application.dart';

part 'application_event.dart';

part 'application_state.dart';

enum MainScreens { splash, home }

class ApplicationCubit extends Cubit<MainScreens> {
  ApplicationCubit() : super(MainScreens.splash);


    Future<void> init() async {
      emit(MainScreens.splash);

      AppBloc.connectivityCubit.initConnectivity();

      ///Setup Language
        AppBloc.languageBloc.add(
          OnChangeLanguage(
              language: const Language(
                  locale: Locale("en"),
                  textDirection: TextDirection.ltr,
                  name: "English"
              )),
        );


      ///Check phone dark option
      final brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      Application.deviceDarkTheme = (brightness == Brightness.dark);


      ///Setup Theme & Font with dark Option
      if(Application.deviceDarkTheme) {
        AppBloc.themeCubit.changeTheme(ThemeCollection().darkThemeData);
      }

      AppBloc.projectsCubit.loadProjects();
      AppBloc.gitRepositoriesCubit.loadRepos();
      AppBloc.contactsCubit.loadContacts();
      await Future.delayed(const Duration(seconds: 2));
      emit(MainScreens.home);
    }

}
