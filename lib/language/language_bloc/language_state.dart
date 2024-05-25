part of 'language_bloc.dart';

@immutable
abstract class LanguageState {}

class LanguageInitial extends LanguageState {}

class LanguageUpdating extends LanguageState {}

class LanguageUpdated extends LanguageState {
  final Language language;

  LanguageUpdated(this.language);
}
