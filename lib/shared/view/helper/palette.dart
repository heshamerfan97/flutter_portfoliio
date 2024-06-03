import 'package:flutter/painting.dart';
import 'package:portfolio/application/application.dart';

// this class contains all colors in the app.
class Palette {
  static const Color transparent = Color(0x00FFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFF0304E);
  static const Color green = Color(0xFF008000);

  /// Dark Colors
  /*static const Color backgroundDark = Color(0xFF2C2E3A);
  static const Color primaryDark = Color(0xFFB8D3D1);
  static const Color secondaryDark = Color(0xFF136F63);*/

  static const Color backgroundDark = Color(0xFFFAFAFA);
  static const Color primaryDark = Color(0xFF3c6e71);
  static const Color secondaryDark = Color(0xFF284b63);


  /// Light Colors
  static const Color backgroundLight = Color(0x22F9F4E8);

  static const Color primaryLight = Color(0xFFB35340);
  static const Color blueLight = Color(0xFF1F3C5C);
  static const Color secondaryLight = Color(0xFF6384A2);
  static const Color creamyLight = Color(0xFFF4EBDE);
  static const Color primaryLightLight = Color(0xFF314C6F);

  static const Gradient gradientBlue = LinearGradient(colors: [blueLight, secondaryLight]);
  static const Gradient gradientPrimary = LinearGradient(colors: [secondaryLight, primaryLight]);




  static const Color secondaryGrey = Color(0xFFDED7D6);
  static const Color secondaryGreen = Color(0xFFBFCFBE);
  static const Color secondaryBlue = Color(0xFFE1E7FF);
  static const Color deepViolet = Color(0xFF871964);
  static const Color yellow = Color(0xFFFFC007);
  static const Color grey = Color(0xFF8D8D8D);

  static Color getPrimaryColor() => Application.darkTheme?primaryDark:primaryLight;
  static Color getSecondaryColor() => Application.darkTheme?secondaryDark:secondaryLight;
}
