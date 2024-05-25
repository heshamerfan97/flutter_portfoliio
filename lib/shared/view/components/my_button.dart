import 'package:flutter/material.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../helper/export.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.isActive,
    this.isText = true,
    this.child,
    this.style,
    this.width,
    this.padding,
    this.height = 50,
    this.color,
    this.borderColor,
    this.imageColor,
    this.hasBorder = false,
  }) : super(key: key);
  final void Function() onTap;
  final String text;
  final bool isActive;
  final bool isText;
  final Widget? child;
  final double? width, padding, height;
  final Color? color, borderColor, imageColor;
  final TextStyle? style;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: padding ?? 20),
        decoration: BoxDecoration(
            color: isActive ? (color ?? Palette.secondaryGreen) : Colors.grey.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: hasBorder ? Border.all(color: borderColor ?? Palette.white) : null),
        child: isText
            ? FittedBox(
              child: Text(
                  text.localize(),
                  textAlign: TextAlign.center,
                  style: style ?? TextStyles.buttonTextStyle,
                ),
            )
            : child,
      ),
    );
  }
}
