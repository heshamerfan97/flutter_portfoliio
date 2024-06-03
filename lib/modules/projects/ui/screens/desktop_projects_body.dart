import 'package:flutter/material.dart';

import '../../models/project.dart';
import '../components/project_tile.dart';

class DesktopProjectsBody extends StatelessWidget {
  const DesktopProjectsBody(this.projects, {super.key});

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        (projects.length/2).ceil(),
            (index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProjectTile(
              projects[index*2],
              twoInRow: true,
            ),
            if(index<(projects.length/2)-1) ProjectTile(
              projects[(index*2)+1],
              twoInRow: true,
            ),
          ],
        ),
      ),
    );
  }
}
