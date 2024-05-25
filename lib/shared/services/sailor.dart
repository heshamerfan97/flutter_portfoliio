import 'package:flutter/material.dart';

// global variable to access sailor which is a navigation service
// that controls routes easily and without the need of passing contexts.
// ignore: non_constant_identifier_names
final Sailor = _SailorImpl();

// prevents sailor implementation to be accessed from outside this file.
class _SailorImpl {
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  // global key which controls navigation state
  final _navigatorKey = GlobalKey<NavigatorState>();
}

extension NavigationMethods on _SailorImpl {
  // use "toNamed" instead of Navigator.pushNamed

  String? currentName() => currentContext == null
      ? null
      : ModalRoute.of(currentContext!)?.settings.name;

  Future<dynamic> toNamed(String routeName, {Map<String, dynamic>? args}) {
    return _navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  /// use [replaceWith] instead of [Navigator.pushReplacementNamed]
  Future<dynamic> replaceWith(String routeName, {Map<String, dynamic>? args}) {
    return _navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: args);
  }

  /// use [makeFirst] instead of [Navigator.pushNamedAndRemoveUntil]
  Future<dynamic> makeFirst(String routeName, {Map<String, dynamic>? args}) {
    return _navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  /// use [routeToFirst] instead to navigate to the first screen
  void routeToFirst() => _navigatorKey.currentState!.popUntil((route) => route.isFirst);

  static BuildContext? currentContext =
      Sailor.navigatorKey.currentState?.overlay?.context;

  // use "back" instead of Navigator.pop
  void back<T extends Object?>([T? result]) {
    if (_navigatorKey.currentState!.canPop()) {
      return _navigatorKey.currentState!.pop(result);
    }
  }
}
