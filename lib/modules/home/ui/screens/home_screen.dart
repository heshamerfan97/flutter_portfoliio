import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/ui/screens/desktop_home_body.dart';
import 'package:portfolio/modules/home/ui/screens/large_mobile_home_body.dart';
import 'package:portfolio/modules/home/ui/screens/mobile_home_body.dart';
import 'package:portfolio/modules/home/ui/screens/tablet_home_body.dart';
import 'package:portfolio/utils/resizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Resizer(
        desktop: DesktopHomeBody(),
        largeMobile: LargeMobileHomeBody(),
        mobile: MobileHomeBody(),
        tablet: TabletHomeBody());
  }
}
