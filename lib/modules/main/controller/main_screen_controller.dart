import 'package:flutter_bloc/flutter_bloc.dart';

enum MainScreens { splash, home }

class MainScreenCubit extends Cubit<MainScreens> {
  MainScreenCubit() : super(MainScreens.splash);

  Future<void> init() async {
    emit(MainScreens.splash);
    await Future.delayed(const Duration(seconds: 4));
    emit(MainScreens.home);
  }

  void changeScreen(MainScreens screen) => emit(screen);


}
