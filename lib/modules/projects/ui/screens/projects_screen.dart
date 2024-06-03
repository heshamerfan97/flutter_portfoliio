import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/projects/controller/projects_cubit.dart';
import 'package:portfolio/modules/projects/models/project.dart';
import 'package:portfolio/modules/projects/ui/screens/desktop_projects_body.dart';
import 'package:portfolio/modules/projects/ui/screens/large_mobile_projects_body.dart';
import 'package:portfolio/modules/projects/ui/screens/mobile_projects_body.dart';
import 'package:portfolio/modules/projects/ui/screens/tablet_projects_body.dart';
import 'package:portfolio/utils/resizer.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../../../../shared/view/helper/palette.dart';
import '../../../../shared/view/helper/text_styles.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsCubit, List<Project>>(
      builder: (context, projects) {
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => Palette.gradientPrimary.createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),child: Text("LblTitleMyProjects".localize(), style: TextStyles.boldVeryLargeText,)),

              Resizer(
                desktop: DesktopProjectsBody(projects),
                largeMobile: LargeMobileProjectsBody(projects),
                mobile: MobileProjectsBody(projects),
                tablet: TabletProjectsBody(projects),
              ),
            ],
          ),
        );
      },
    );
  }
}


