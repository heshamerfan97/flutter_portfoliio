part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}

class OnChangeLanguage extends LanguageEvent {
  final Language language;

  OnChangeLanguage({required this.language});
}
