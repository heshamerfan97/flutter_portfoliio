import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/modules/repositories/controller/git_repositories_cubit.dart';
import 'package:portfolio/modules/repositories/models/git_repository.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/string_extensions.dart';

import '../../../../shared/view/helper/palette.dart';
import '../../../../shared/view/helper/text_styles.dart';
import '../../../../utils/resizer.dart';
import 'desktop_repositories_body.dart';
import 'large_mobile_repositories_body.dart';
import 'mobile_repositories_body.dart';
import 'tablet_repositories_body.dart';

class RepositoriesScreen extends StatelessWidget {
  const RepositoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GitRepositoriesCubit, List<GitRepository>>(
      builder: (context, repos) {
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => Palette.gradientPrimary.createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                  child: Text(
                    "LblTitleMyRepos".localize(),
                    style: TextStyles.boldVeryLargeText,
                  )),
              const VerticalSpace(32),
              Resizer(
                desktop: DesktopRepositoriesBody(repos),
                largeMobile: LargeMobileRepositoriesBody(repos),
                mobile: MobileRepositoriesBody(repos),
                tablet: TabletRepositoriesBody(repos),
              ),
            ],
          ),
        );
      },
    );
  }
}
