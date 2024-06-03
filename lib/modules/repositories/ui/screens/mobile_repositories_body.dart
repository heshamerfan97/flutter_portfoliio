import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import '../../models/git_repository.dart';
import '../components/repository_image.dart';

class MobileRepositoriesBody extends StatelessWidget {
  const MobileRepositoriesBody(this.repos, {super.key});

  final List<GitRepository> repos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: repos.map((repo) => Column(
        children: [
          RepositoryImage(repo),
          const VerticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(repo.description, style: TextStyles.boldDisableText,),
          ),
          const VerticalSpace(32),
        ],
      )).toList(),
    );
  }
}
