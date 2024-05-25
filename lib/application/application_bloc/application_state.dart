part of 'application_bloc.dart';

@immutable
abstract class ApplicationState {}

class ApplicationInitial extends ApplicationState {}

class InitialApplicationState extends ApplicationState {}

class ApplicationWaiting extends ApplicationState {}

class ApplicationSetupCompleted extends ApplicationState {}

class ApplicationIntroView extends ApplicationState {}
