import 'package:flutter/material.dart';

import '../../../../shared/view/helper/space.dart';
import '../../../../shared/view/helper/text_styles.dart';
import '../../models/git_repository.dart';
import '../components/repository_image.dart';

class LargeMobileRepositoriesBody extends StatelessWidget {
  const LargeMobileRepositoriesBody(this.repos, {super.key});

  final List<GitRepository> repos;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: repos.map((repo) => Column(
        children: [
          RepositoryImage(repo),
          const VerticalSpace(16),
          Text(repo.description, style: TextStyles.boldDisableText,),
          const VerticalSpace(32),
        ],
      )).toList(),
    );
  }
}
