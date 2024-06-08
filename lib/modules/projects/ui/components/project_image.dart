import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/application/application.dart';

import '../../../../shared/view/helper/palette.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage(this.projectImage,{ this.imageSize = 300, super.key});

  final String projectImage;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageSize,
      width: imageSize,
      child: Container(
          decoration: BoxDecoration(
            gradient: Application.deviceDarkTheme?Palette.gradientBlue:Palette.gradientPrimary,
            borderRadius: BorderRadius.circular(35)
          ),
          padding: const EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(33),
            child: Container(
              color: Palette.backgroundLight,
              child: Image.asset(
                projectImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
    );
  }
}
