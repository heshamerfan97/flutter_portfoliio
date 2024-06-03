import 'dart:html' as html;
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/modules/projects/models/project.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../../../../shared/view/components/my_button.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo(this.project, {required this.descriptionSize, super.key});

  final Project project;
  final double descriptionSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title,
          style: TextStyles.boldVeryLargeText,
        ),
        const VerticalSpace(12),
        SizedBox(
            width: MediaQuery.of(context).size.width * descriptionSize,
            child: Text(
              project.description,
              style: TextStyles.boldDisableText,
              textAlign: TextAlign.start,
            )),
        const VerticalSpace(12),
        if (project.androidUrl != null || project.iosUrl != null)
          MyButton(
            onTap: () {
              if ((defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS) &&
                  project.iosUrl != null) html.window.open(project.iosUrl!, 'new tab');
              if ((defaultTargetPlatform == TargetPlatform.android ||
                      defaultTargetPlatform == TargetPlatform.windows ||
                      defaultTargetPlatform == TargetPlatform.linux) &&
                  project.androidUrl != null) html.window.open(project.androidUrl!, 'new tab');
            },
            text: "",
            isText: false,
            width: 180,
            height: 50,
            gradient: Palette.gradientBlue,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "BtnViewOnStore".localize(),
                style: TextStyles.boldText.copyWith(color: Palette.creamyLight, fontSize: 13),
              ),
              if (project.androidUrl != null)
                const Icon(
                  FontAwesome.android,
                  color: Palette.creamyLight,
                  size: 18,
                ),
              if (project.iosUrl != null)
                const Icon(
                  FontAwesome.apple,
                  color: Palette.creamyLight,
                  size: 18,
                ),
            ]),
          ),
      ],
    );
  }
}
