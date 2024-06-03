import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/application/application_bloc/application_bloc.dart';
import 'package:portfolio/modules/main/ui/screens/main_screen.dart';
import 'package:portfolio/modules/main/ui/screens/splash.dart';


class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, MainScreens>(
      builder: (context, screen) {
        if(screen == MainScreens.splash){
          return const SplashScreen();
        }
        return MainScreen();
      },
    );
  }
}
