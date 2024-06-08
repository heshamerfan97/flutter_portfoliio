import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portfolio/modules/main/ui/screens/application_screen.dart';
import 'package:portfolio/utils/string_extensions.dart';

import 'app_bloc.dart';
import 'application/application.dart';
import 'config/routes.dart';
import 'language/app_language.dart';
import 'language/language_bloc/language_bloc.dart';
import 'shared/controllers/connectivity_controller.dart';
import 'shared/controllers/error_cubit.dart';
import 'shared/controllers/loading_cubit.dart';
import 'shared/services/sailor.dart';
import 'shared/view/components/loading_widget.dart';
import 'theme/theme_collection.dart';
import 'theme/theme_cubit.dart';
import 'utils/logger.dart';
import 'utils/toast_utils.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    Logger.log(event, tag: '📦 BLOC EVENT 📦');
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Logger.log(error, tag: '📦🛑 BLOC ERROR 🛑📦');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    Logger.log('${transition.currentState} => ${transition.nextState}', tag: '📦 BLOC TRANSITION 📦');
    super.onTransition(bloc, transition);
  }


}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    AppBloc.applicationCubit.init();
    super.initState();
  }

  bool isConnectivityDialogShown = false;


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.providers,
      child: BlocBuilder<LanguageBloc, LanguageState>(builder: (context, lang) {
        return BlocBuilder<ThemeCubit, ThemeData>(builder: (context, themeData) {
          return MaterialApp(
            title: "Flutter Portfolio",
            debugShowCheckedModeBanner: false,
            theme: ThemeCollection().lightThemeData,
            darkTheme: ThemeCollection().darkThemeData,
            locale: lang is LanguageUpdated?lang.language.locale:AppLanguage.defaultLanguage?.locale,
            navigatorKey: Sailor.navigatorKey,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: AppLanguage.supportLanguages.map((lang) => lang.locale),
            onGenerateRoute: AppRouter.generateRoute,
            home: Directionality(
              textDirection: Application.isArabic ? TextDirection.rtl : TextDirection.ltr,
              child: BlocListener<ErrorCubit, String>(
                listener: (context, errorMessage) {
                  if(errorMessage.isNotEmpty){
                    ToastUtils.showToast(errorMessage, toastLength: Toast.LENGTH_LONG);
                  }
                },
                child: BlocListener<LoadingCubit, bool>(
                  listener: (context, loading) {
                    if (loading) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) =>
                              Container(
                                  decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
                                  child: const Center(child: LoadingWidget())));
                    } else {
                      ///Closing the dialog
                      Sailor.back();
                    }
                  },
                  child: BlocListener<ConnectivityCubit, ConnectivityResult>(
                    listenWhen: (oldState, newState) => oldState != newState,
                    listener: (context, connectivityState) {
                      if (connectivityState != ConnectivityResult.wifi &&
                          connectivityState != ConnectivityResult.mobile && !isConnectivityDialogShown && !kIsWeb ) {
                        isConnectivityDialogShown = true;
                        showDialog(
                            context: context,
                            builder: (ctx) =>
                                AlertDialog(
                                  title: Text('MsgNoInternetConnection'.localize()),
                                )).then((value) => isConnectivityDialogShown = false);
                      }
                    },
                    child: const ApplicationScreen(),
                  ),
                ),
              ),
            ),
          );
        });
      }),
    );
  }

  @override
  void dispose() {
    AppBloc.dispose();
    super.dispose();
  }
}
