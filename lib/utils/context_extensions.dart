import 'package:flutter/cupertino.dart';

extension ContextExtensions on BuildContext {
  double screenHeight() => MediaQuery.of(this).size.height;
  double screenWidth() => MediaQuery.of(this).size.width;
}