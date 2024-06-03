import 'dart:developer' as developer;
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:logging/logging.dart';

import 'package:flutter/foundation.dart';

class Logger {
  static const String tag = "Henkel App:";

  /// Normal Text
  static log(dynamic msg, {String tag = tag}) {
    if (!kReleaseMode) {
      developer.log('$msg', name: tag, level: Level.FINE.value);
    }
  }

  /// Normal Text
  static logCubit(Change change, String cubitName) {
    if (!kReleaseMode) {
      developer.log('${change.currentState} => ${change.nextState}', name: '📦 Cubit $cubitName Change 📦', level: Level.INFO.value);
    }
  }

  /// Blue text
  static void logInfo(dynamic msg, {String tag = tag}) {
    if (!kReleaseMode) {
      developer.log('$msg', name: '📘 $tag', level: Level.INFO.value);
    }
  }

  /// Green text
  static void logSuccess(dynamic msg, {String tag = tag}) {
    if (!kReleaseMode) {
      developer.log('$msg', name: '📗 $tag', level: Level.FINEST.value);
    }
  }

  /// Yellow text
  static void logWarning(dynamic msg, {String tag = tag}) {
    if (!kReleaseMode) {
      developer.log('$msg', name: '📒 $tag', level: Level.WARNING.value);
    }
  }

  /// Red text
  static void logError(dynamic msg, {String tag = tag}) {
    if (!kReleaseMode) {
      developer.log('🛑 $msg 🛑', name: '📕 $tag', level: Level.SEVERE.value);
    }
  }

  ///Singleton factory
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance;
  }

  Logger._internal();
}
