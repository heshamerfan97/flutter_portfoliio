import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/main/controller/main_screen_controller.dart';
import 'package:portfolio/shared/controllers/connectivity_controller.dart';
import 'package:portfolio/shared/controllers/error_cubit.dart';
import 'package:portfolio/shared/controllers/loading_cubit.dart';
import 'package:portfolio/theme/theme_cubit.dart';

import 'application/application_bloc/application_bloc.dart';
import 'language/language_bloc/language_bloc.dart';

class AppBloc {
  static final applicationBloc = ApplicationBloc();
  static final languageBloc = LanguageBloc();
  static final themeCubit = ThemeCubit();
  static final loadingCubit = LoadingCubit();
  static final errorCubit = ErrorCubit();
  static final connectivityCubit = ConnectivityCubit();
  static final mainScreenCubit = MainScreenCubit();

  static final List<BlocProvider> providers = [
    BlocProvider<ApplicationBloc>(create: (context) => applicationBloc),
    BlocProvider<LanguageBloc>(create: (context) => languageBloc),
    BlocProvider<ThemeCubit>(create: (context) => themeCubit),
    BlocProvider<LoadingCubit>(create: (context) => loadingCubit),
    BlocProvider<ErrorCubit>(create: (context) => errorCubit),
    BlocProvider<ConnectivityCubit>(create: (context) => connectivityCubit),
    BlocProvider<MainScreenCubit>(create: (context) => mainScreenCubit),
  ];

  static void dispose() {
    applicationBloc.close();
    languageBloc.close();
    themeCubit.close();
    loadingCubit.close();
    errorCubit.close();
    connectivityCubit.close();
    mainScreenCubit.close();
  }

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  AppBloc._internal();
}
