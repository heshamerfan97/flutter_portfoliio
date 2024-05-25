import 'package:bloc/bloc.dart';

class LoadingCubit extends Cubit<bool> {
  LoadingCubit() : super(false);

  void changeState(bool loading) {
    emit(loading);
  }
}
