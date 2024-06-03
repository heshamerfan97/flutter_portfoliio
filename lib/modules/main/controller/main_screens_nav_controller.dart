import 'package:flutter_bloc/flutter_bloc.dart';



class MainScreenNavCubit extends Cubit<int> {
  MainScreenNavCubit() : super(0);

  void changeScreen(int screenIndex) => emit(screenIndex);


}
