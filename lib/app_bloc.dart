import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/main/controller/main_screens_nav_controller.dart';
import 'package:portfolio/modules/projects/controller/projects_cubit.dart';
import 'package:portfolio/modules/repositories/controller/git_repositories_cubit.dart';
import 'package:portfolio/shared/controllers/connectivity_controller.dart';
import 'package:portfolio/shared/controllers/error_cubit.dart';
import 'package:portfolio/shared/controllers/loading_cubit.dart';
import 'package:portfolio/theme/theme_cubit.dart';

import 'application/application_bloc/application_bloc.dart';
import 'language/language_bloc/language_bloc.dart';
import 'modules/contacts/controller/contacts_cubit.dart';

class AppBloc {
  static final applicationCubit = ApplicationCubit();
  static final languageBloc = LanguageBloc();
  static final themeCubit = ThemeCubit();
  static final loadingCubit = LoadingCubit();
  static final errorCubit = ErrorCubit();
  static final connectivityCubit = ConnectivityCubit();
  static final mainScreenNavCubit = MainScreenNavCubit();
  static final projectsCubit = ProjectsCubit();
  static final gitRepositoriesCubit = GitRepositoriesCubit();
  static final contactsCubit = ContactsCubit();

  static final List<BlocProvider> providers = [
    BlocProvider<ApplicationCubit>(create: (context) => applicationCubit),
    BlocProvider<LanguageBloc>(create: (context) => languageBloc),
    BlocProvider<ThemeCubit>(create: (context) => themeCubit),
    BlocProvider<LoadingCubit>(create: (context) => loadingCubit),
    BlocProvider<ErrorCubit>(create: (context) => errorCubit),
    BlocProvider<ConnectivityCubit>(create: (context) => connectivityCubit),
    BlocProvider<MainScreenNavCubit>(create: (context) => mainScreenNavCubit),
    BlocProvider<ProjectsCubit>(create: (context) => projectsCubit),
    BlocProvider<GitRepositoriesCubit>(create: (context) => gitRepositoriesCubit),
    BlocProvider<ContactsCubit>(create: (context) => contactsCubit),
  ];

  static void dispose() {
    applicationCubit.close();
    languageBloc.close();
    themeCubit.close();
    loadingCubit.close();
    errorCubit.close();
    connectivityCubit.close();
    mainScreenNavCubit.close();
    projectsCubit.close();
    gitRepositoriesCubit.close();
    contactsCubit.close();
  }

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  AppBloc._internal();
}
