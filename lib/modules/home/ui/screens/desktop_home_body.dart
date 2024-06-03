import 'package:flutter/material.dart';
import '../components/home_intro_widget.dart';
import '../components/home_profile_image_widget.dart';

class DesktopHomeBody extends StatelessWidget {
  const DesktopHomeBody({super.key});

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
