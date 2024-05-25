import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme_collection.dart';


class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(ThemeCollection().lightThemeData);

  changeTheme(ThemeData theme) {
    emit(theme);
  }
}
