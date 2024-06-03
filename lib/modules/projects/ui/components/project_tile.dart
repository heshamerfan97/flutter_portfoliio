import 'package:flutter/material.dart';
import 'package:portfolio/modules/projects/models/project.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import 'project_image.dart';
import 'project_info.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile(this.project, {this.twoInRow = false, super.key});

  final Project project;
  final bool twoInRow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(project.image),
          VerticalSpace(24),
          ProjectInfo(
            project,
            descriptionSize: twoInRow?0.4:0.8,
          ),
        ],
      )
    );
  }
}
