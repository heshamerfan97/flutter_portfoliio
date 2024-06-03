import 'package:flutter/material.dart';
import '../components/home_intro_widget.dart';
import '../components/home_profile_image_widget.dart';

class TabletHomeBody extends StatelessWidget {
  const TabletHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeIntroWidget(resizeDescription: true),
            HomeProfileImageWidget(),
          ],
        ),
      ],
    );
  }
}
