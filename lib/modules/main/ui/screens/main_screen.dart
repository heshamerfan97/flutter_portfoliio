import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/main/controller/main_screen_controller.dart';
import 'package:portfolio/modules/main/ui/screens/splash.dart';

import '../../../home/ui/screens/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenCubit, MainScreens>(
      builder: (context, screen) {
        if(screen == MainScreens.splash){
          return const SplashScreen();
        }

        return const HomeScreen();
      },
    );
  }
}
