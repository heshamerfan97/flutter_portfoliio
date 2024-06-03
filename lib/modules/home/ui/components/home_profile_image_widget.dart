import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/export.dart';

class HomeProfileImageWidget extends StatelessWidget {
  const HomeProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 260,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(400),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                height: 280,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(400),
                    topLeft: Radius.circular(400),
                  ),
                  gradient: Palette.gradientPrimary,
                ),
              ),
            ),
            Positioned.fill(child: Image.asset(Images.me, fit: BoxFit.fitHeight,))
          ],
        )
      ),
    )
    ;
  }
}
