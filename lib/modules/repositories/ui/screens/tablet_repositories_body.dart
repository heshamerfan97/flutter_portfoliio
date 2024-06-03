import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/helper/export.dart';

import '../../models/git_repository.dart';
import '../components/repository_image.dart';

class TabletRepositoriesBody extends StatelessWidget {
  const TabletRepositoriesBody(this.repos, {super.key});

  final List<GitRepository> repos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(repos.length, (index) => Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(index%2==0)RepositoryImage(repos[index], fullScreen: false,),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: Text(repos[index].description, style: TextStyles.boldDisableText.copyWith(height: 2.5))),
            if(index%2!=0)RepositoryImage(repos[index], fullScreen: false,),
          ],
        ),
      )),
    );
  }
}
