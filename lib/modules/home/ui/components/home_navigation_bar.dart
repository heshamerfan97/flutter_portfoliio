import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc.dart';
import 'package:portfolio/modules/main/controller/main_screens_nav_controller.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/string_extensions.dart';


class HomeNavigationBar extends StatelessWidget {
  HomeNavigationBar({super.key});

  final List<String> screenTitles = ['LblTabHome', 'LblTabProjects', 'LblTabRepos', 'LblTabContact'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenNavCubit, int>(
      builder: (context, screenIndex) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: InkWell(
                onTap: (){
                  AppBloc.mainScreenNavCubit.changeScreen(i);
                },
                splashColor: Palette.transparent,
                child: i == screenIndex ? ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => Palette.gradientPrimary.createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    screenTitles[i].localize(),
                    style:TextStyles.boldText.copyWith(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                ):Text(
                screenTitles[i].localize(),
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
              ),
            ),
          ),
        );
      },
    );
  }
}
