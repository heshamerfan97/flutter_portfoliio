import 'package:flutter/material.dart';

import '../components/home_intro_widget.dart';
import '../components/home_profile_image_widget.dart';

class MobileHomeBody extends StatelessWidget {
  const MobileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [HomeProfileImageWidget(), HomeIntroWidget()],
    );
  }
}
