import 'package:flutter/material.dart';

import '../components/home_intro_widget.dart';
import '../components/home_profile_image_widget.dart';

class LargeMobileHomeBody extends StatelessWidget {
  const LargeMobileHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [HomeProfileImageWidget(), HomeIntroWidget()],
    );
  }
}
