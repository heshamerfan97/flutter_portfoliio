import 'package:bloc/bloc.dart';

class ErrorCubit extends Cubit<String> {
  ErrorCubit() : super('');

  void showError(String message) {
    emit('');
    emit(message);
  }
}
