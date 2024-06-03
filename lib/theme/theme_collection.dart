import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import '../shared/view/helper/palette.dart';

class ThemeCollection {




  final lightThemeData = ThemeData(
      primarySwatch: const MaterialColor(0xFF2679AD, {
        50: Color(0xFFfcf9f3),
        100: Color(0xFFfaf5ec),
        200: Color(0xFFf9f2e6),
        300: Color(0xFFf8f1e3),
        400: Palette.primaryLight,
        500: Color(0xFFded7ca),
        600: Color(0xFFc6bfb3),
        700: Color(0xFFada79d),
        800: Color(0xFF948f86),
        900: Color(0xFF4a4843),
      }),
      fontFamily: "cairo",
      brightness: Brightness.light,
      primaryColor: Palette.primaryLight,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Palette.black),
        bodyMedium: TextStyle(color: Palette.black),
        bodySmall: TextStyle(color: Palette.black),
        displayLarge: TextStyle(color: Palette.black),
        displayMedium: TextStyle(color: Palette.black),
        displaySmall: TextStyle(color: Palette.black),
        headlineLarge: TextStyle(color: Palette.black),
        headlineMedium: TextStyle(color: Palette.black),
        headlineSmall: TextStyle(color: Palette.black),
        labelLarge: TextStyle(color: Palette.black),
        labelMedium: TextStyle(color: Palette.black),
        labelSmall: TextStyle(color: Palette.black),
        titleLarge: TextStyle(color: Palette.black),
        titleMedium: TextStyle(color: Palette.black),
        titleSmall: TextStyle(color: Palette.black),
      ),
      primaryColorLight: const Color(0xFF8c97d3),
      primaryColorDark: const Color(0xFF2d397f),
      canvasColor: const Color(0xffffffff),
      scaffoldBackgroundColor: Palette.backgroundLight,
      cardColor: const Color(0xffffffff),
      dividerColor: Palette.grey,
      highlightColor: const Color(0x66bcbcbc),
      splashColor: const Color(0x66c8c8c8),
      unselectedWidgetColor: const Color(0x8a000000),
      disabledColor: const Color(0x61000000),
      secondaryHeaderColor: const Color(0xfffcebe9),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Palette.primaryLight,
        cursorColor: Color(0xFF2d397f),
        selectionHandleColor: Palette.primaryLight,
      ),
      dialogBackgroundColor: Palette.backgroundLight,
      indicatorColor: Palette.primaryLight,
      hintColor: const Color(0x8a000000),
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
        minWidth: 88,
        height: 48,
        padding: EdgeInsets.only(left: 16, right: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        buttonColor: Palette.primaryLight,
        disabledColor: Color(0x61000000),
        highlightColor: Color(0x29000000),
        splashColor: Color(0x1f000000),
        focusColor: Color(0x1f000000),
        hoverColor: Color(0x0a000000),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 15,
          right: 15,
        ),
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: Color(0x1f000000),
        brightness: Brightness.light,
        deleteIconColor: Color(0xffdf3c20),
        disabledColor: Color(0x0c000000),
        labelPadding: EdgeInsets.only(left: 8, right: 8),
        labelStyle: TextStyle(
          fontSize: 12,
          fontFamily: "cairo",
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        padding: EdgeInsets.all(4),
        secondaryLabelStyle: TextStyle(
          fontSize: 12,
          fontFamily: "cairo",
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        secondarySelectedColor: Color(0x3de5634d),
        selectedColor: Color(0x3de5634d),
        shape: StadiumBorder(
          side: BorderSide(
            color: Color(0xff000000),
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      dialogTheme: const DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(foregroundColor: WidgetStateProperty.all<Color>(Palette.primaryLight))),
      colorScheme: const ColorScheme.light(
          primary: Color(0xFF0FA4AF), brightness: Brightness.light, secondary: Palette.primaryLight, surface: Palette.grey, error: Color(0xffd32f2f)),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Palette.backgroundLight,
      ), bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)));

  final darkThemeData = ThemeData(
    primarySwatch: const MaterialColor(0xFF2679AD, {
      50: Color(0xfff2f2f2),
      100: Color(0xffe6e6e6),
      200: Color(0xffcccccc),
      300: Color(0xffb3b3b3),
      400: Palette.primaryDark,
      500: Color(0xff808080),
      600: Color(0xff666666),
      700: Color(0xff4d4d4d),
      800: Color(0xff333333),
      900: Color(0xff191919)
    }),
    fontFamily: "cairo",
    brightness: Brightness.dark,
    primaryColor: Palette.primaryDark,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Palette.white),
      bodyMedium: TextStyle(color: Palette.white),
      bodySmall: TextStyle(color: Palette.white),
      displayLarge: TextStyle(color: Palette.white),
      displayMedium: TextStyle(color: Palette.white),
      displaySmall: TextStyle(color: Palette.white),
      headlineLarge: TextStyle(color: Palette.white),
      headlineMedium: TextStyle(color: Palette.white),
      headlineSmall: TextStyle(color: Palette.white),
      labelLarge: TextStyle(color: Palette.white),
      labelMedium: TextStyle(color: Palette.white),
      labelSmall: TextStyle(color: Palette.white),
      titleLarge: TextStyle(color: Palette.white),
      titleMedium: TextStyle(color: Palette.white),
      titleSmall: TextStyle(color: Palette.white),
    ),
    primaryColorLight: const Color(0xFF8c97d3),
    primaryColorDark: const Color(0xFF2d397f),
    canvasColor: Colors.grey[900],
    scaffoldBackgroundColor: Palette.backgroundDark,
    cardColor: const Color(0xff424242),
    dividerColor: Palette.grey,
    highlightColor: const Color(0x40cccccc),
    splashColor: const Color(0x40cccccc),
    unselectedWidgetColor: const Color(0xb3ffffff),
    disabledColor: const Color(0x62ffffff),
    secondaryHeaderColor: const Color(0xff616161),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Palette.primaryDark,
      cursorColor: Color(0xFF2d397f),
      selectionHandleColor: Palette.primaryDark,
    ),
    dialogBackgroundColor: Palette.backgroundDark,
    indicatorColor: Palette.primaryDark,
    hintColor: const Color(0x80ffffff),
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
      minWidth: 88,
      height: 48,
      padding: EdgeInsets.only(left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      buttonColor: Palette.primaryDark,
      disabledColor: Color(0x61ffffff),
      highlightColor: Color(0x29ffffff),
      splashColor: Color(0x1fffffff),
      focusColor: Color(0x1fffffff),
      hoverColor: Color(0x0affffff),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.only(
        top: 12,
        bottom: 12,
        left: 15,
        right: 15,
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x1fffffff),
      brightness: Brightness.dark,
      deleteIconColor: Color(0xdeffffff),
      disabledColor: Color(0x0cffffff),
      labelPadding: EdgeInsets.only(left: 8, right: 8),
      labelStyle: TextStyle(
        fontSize: 12,
        fontFamily: "cairo",
        color: Color(0xb3ffffff),
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.all(4),
      secondaryLabelStyle: TextStyle(
        fontSize: 12,
        fontFamily: "cairo",
        color: Color(0xb3ffffff),
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d212121),
      selectedColor: Color(0x3dffffff),
      shape: StadiumBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Palette.backgroundDark),
    textButtonTheme:
    TextButtonThemeData(style: ButtonStyle(foregroundColor: WidgetStateProperty.all<Color>(Palette.primaryDark))),
    colorScheme:
    const ColorScheme.dark(primary: Color(0xFF0FA4AF), brightness: Brightness.dark, secondary: Palette.primaryDark, error: Color(0xffd32f2f), surface: Color(0xFFB3B4BD)), bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xff424242)),
  );


  ///Singleton factory
  static final ThemeCollection _instance = ThemeCollection._internal();

  factory ThemeCollection() {
    return _instance;
  }

  ThemeCollection._internal();
}
