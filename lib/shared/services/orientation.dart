import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class OrientationHelper {
  static lockScreenToPortraitMode() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  static lockScreenToLandscapeMode() => SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);

  static unlockScreenOrientation() => SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);

  static bool isPortrait(BuildContext context) => MediaQuery.of(context).orientation == Orientation.portrait;
}
