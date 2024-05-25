import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/palette.dart';

//This class is to specify textStyles for the app
class TextStyles {
  static const currentFont = 'segoe_ui';

  ///Base Styles
  static const baseWhiteText = TextStyle(
    color: Palette.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const basePrimaryStyle = TextStyle(
    color: Palette.primary,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const baseDisableText = TextStyle(
    color: Palette.grey,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const baseBlackText = TextStyle(
    color: Palette.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );


  static const baseLightBlueStyle = TextStyle(
    color: Palette.secondaryBlue,
    fontSize: 15,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const baseGreenStyle = TextStyle(
    color: Palette.secondaryGreen,
    fontSize: 15,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );
  static const baseNormalWhiteText = TextStyle(
    color: Palette.white,
    fontSize: 15,
  );

  static const baseNormalDisableText = TextStyle(
    color: Palette.grey,
    fontSize: 15,
  );

  static const baseNormalBlackText = TextStyle(
    color: Palette.black,
    fontSize: 15,
  );

  ///Large Styles
  static const largeDisableStyle = TextStyle(
    color: Palette.grey,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const largePrimaryStyle = TextStyle(
    color: Palette.primary,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const largeWhiteStyle = TextStyle(
    color: Palette.white,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const largeBlackStyle = TextStyle(
    color: Palette.black,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const largeSecondaryGreenStyle = TextStyle(
    color: Palette.secondaryGreen,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const largeSecondaryBlueStyle = TextStyle(
    color: Palette.secondaryBlue,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  ///Mid Styles
  static const midWhiteStyle = TextStyle(
    color: Palette.white,
    fontSize: 11,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const midBlackStyle = TextStyle(
    color: Palette.black,
    fontSize: 11,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const midSecondaryBlueStyle = TextStyle(
    color: Palette.secondaryBlue,
    fontSize: 11,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const midDisableStyle = TextStyle(
    color: Palette.darkGrey,
    fontSize: 11,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );


  ///Small Styles
  static const smallBlueStyle = TextStyle(
    color: Palette.secondaryBlue,
    fontSize: 6,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  ///Specific Styles
  static const appBarStyle = TextStyle(
    color: Palette.primary,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const buttonTextStyle = TextStyle(
    color: Palette.white,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const hintStyle = TextStyle(
    color: Palette.grey,
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );

  static navBarTextStyle([bool selected = false]) => TextStyle(
        color: selected ? Palette.primary : const Color(0xFF979797),
        fontSize: selected ? 12 : 10,
        fontFamily: currentFont,
        fontWeight: FontWeight.bold,
      );

}
