import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/modules/main/ui/components/dash_rive_animation.dart';
import 'package:portfolio/modules/main/ui/components/splash_loading_indicator.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/resizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width: double.infinity,),
          Resizer(
            desktop: DashRiveAnimation(size: 450),
            largeMobile: DashRiveAnimation(size: 350),
            mobile: DashRiveAnimation(size: 300),
            tablet: DashRiveAnimation(size: 400),
          ),
          VerticalSpace(30),
          Resizer(
            desktop: SplashLoadingIndicator(width: 450),
            largeMobile: SplashLoadingIndicator(width: 350),
            mobile: SplashLoadingIndicator(width: 300),
            tablet: SplashLoadingIndicator(width: 400),
          )
        ],
      ),
    );
  }
}
