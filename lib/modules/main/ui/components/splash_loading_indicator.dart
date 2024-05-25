import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/export.dart';

class SplashLoadingIndicator extends StatelessWidget {
  const SplashLoadingIndicator({required this.width, this.time = 4, super.key});

  final double width;
  final int time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TweenAnimationBuilder(
        duration: Duration(seconds: time),
        builder: (context, value, child) => Column(
          children: [
            SizedBox(
              height: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: LinearProgressIndicator(
                  value: value,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${(value * 100).toInt()}%',
              style:
              const TextStyle(fontWeight: FontWeight.bold, shadows: [
                Shadow(color: Palette.primary, blurRadius: 10, offset: Offset(2, 2)),
                Shadow(color: Palette.secondaryBlue, blurRadius: 10, offset: Offset(-2, -2)),
              ]),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
