import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../../shared/view/helper/rives.dart';

class DashRiveAnimation extends StatelessWidget {
  const DashRiveAnimation({required this.size, this.animations, super.key});

  final double size;
  final List<String>? animations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: RiveAnimation.asset(
        Rives.dash,
        fit: BoxFit.cover,
        animations: animations ?? [
          "slowDance"
        ],
      ),
    );
  }
}
