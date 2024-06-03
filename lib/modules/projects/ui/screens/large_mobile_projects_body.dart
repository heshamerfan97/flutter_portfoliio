import 'package:flutter/material.dart';

import '../../models/project.dart';
import '../components/project_tile.dart';

class LargeMobileProjectsBody extends StatelessWidget {
  const LargeMobileProjectsBody(this.projects,{super.key});
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(projects.length, (index) => ProjectTile(projects[index])),
    );
  }
}
