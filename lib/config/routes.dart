import 'package:flutter/cupertino.dart';

import '../modules/home/ui/screens/home_screen.dart';
import '../utils/logger.dart';

// this class contains all routes names
class AppRouter {
  static String currentRoute = '';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    PageRouteBuilder pageRouteBuilder(Widget page) {
      return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, a, __, c) => FadeTransition(
                opacity: a,
                child: c,
              ));
    }

    Logger.log(settings.name, tag: 'Route');
    currentRoute = settings.name ?? '';
    switch (settings.name) {
      case Routes.homeScreen:
        return pageRouteBuilder(const HomeScreen());
      default:
        return pageRouteBuilder(const HomeScreen());
    }
  }
}

class Routes {
  static const String homeScreen = "home_screen";
}
