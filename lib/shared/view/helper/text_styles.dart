import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/palette.dart';

//This class is to specify textStyles for the app
class TextStyles {
  static const currentFont = 'segoe_ui';

  ///Base Styles
  static const boldText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldPrimaryText = TextStyle(
    color: Palette.getPrimaryColor(),
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldSecondaryText = TextStyle(
    color: Palette.getSecondaryColor(),
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static const boldDisableText = TextStyle(
    color: Palette.grey,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  ///Large Styles
  static const largeDisableStyle = TextStyle(
    color: Palette.grey,
    fontSize: 20,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const boldLargeText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldLargePrimaryText = TextStyle(
    color: Palette.getPrimaryColor(),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldLargeSecondaryText = TextStyle(
    color: Palette.getSecondaryColor(),
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  /// Very Large Styles
  static const veryLargeDisableStyle = TextStyle(
    color: Palette.grey,
    fontSize: 40,
    fontFamily: currentFont,
    fontWeight: FontWeight.bold,
  );

  static const boldVeryLargeText = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldVeryLargePrimaryText = TextStyle(
    color: Palette.getPrimaryColor(),
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldVeryLargeSecondaryText = TextStyle(
    color: Palette.getSecondaryColor(),
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  ///Mid Styles
  static const boldMidText = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldMidPrimaryText = TextStyle(
    color: Palette.getPrimaryColor(),
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldMidSecondaryText = TextStyle(
    color: Palette.getSecondaryColor(),
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );


  ///Small Styles
  static const boldSmallStyle = TextStyle(
    fontSize: 6,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldSmallPrimaryText = TextStyle(
    color: Palette.getPrimaryColor(),
    fontSize: 6,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldSmallSecondaryText = TextStyle(
    color: Palette.getSecondaryColor(),
    fontSize: 6,
    fontWeight: FontWeight.bold,
  );


  /// Others
  static const hintStyle = TextStyle(
    color: Palette.grey,
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );


}
