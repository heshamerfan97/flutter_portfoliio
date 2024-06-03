import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/modules/home/ui/components/home_navigation_bar.dart';
import 'package:portfolio/shared/view/components/my_button.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/string_extensions.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({this.oneLine = true, super.key});

  final bool oneLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text("${"LblTxtHesham".localize()} ", style: TextStyles.boldLargeText),
                ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => Palette.gradientPrimary.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),child: Text("LblTxtErfan".localize(), style: TextStyles.boldLargeSecondaryText,)),
              ]),
            ),
            if(oneLine) HomeNavigationBar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyButton(onTap: ()=>html.window.open("https://api.whatsapp.com/send/?phone=201154351174", 'new tab'), text: "", isText: false, width: 130, height: 40,
                gradient: Palette.gradientBlue,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("BtnContactMe".localize(), style: TextStyles.boldText.copyWith(color: Palette.creamyLight, fontSize: 13),),
                  const Icon(FontAwesome.whatsapp, color: Palette.creamyLight, size: 18,),
                ]
              ), ),
            ),
          ],
        ),
        if(!oneLine) HomeNavigationBar(),
        const Divider(thickness: 0.5,),
      ],
    );
  }
}
