import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/shared/view/components/my_button.dart';
import 'package:portfolio/shared/view/helper/export.dart';
import 'package:portfolio/utils/string_extensions.dart';

class HomeIntroWidget extends StatelessWidget {
  const HomeIntroWidget({this.resizeDescription = false, super.key});

  final bool resizeDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () => html.window.open("https://github.com/heshamerfan97", 'new tab'),
                  child: const Icon(FontAwesome.github_squared)),
              const HorizontalSpace(20),
              InkWell(
                  onTap: () => html.window.open("https://www.linkedin.com/in/hesham-erfan-876b83105", 'new tab'),
                  child: const Icon(FontAwesome.linkedin_squared)),
              const HorizontalSpace(20),
              InkWell(
                  onTap: () => html.window.open("https://www.facebook.com/heshamerfan7", 'new tab'),
                  child: const Icon(FontAwesome.facebook_squared)),
              const HorizontalSpace(20),
            ],
          ),
          const VerticalSpace(20),
          Row(
            children: [
              Image.asset(
                Images.dashtar,
                height: 50,
                width: 60,
                fit: BoxFit.fitHeight,
              ),
              Text(
                "${"LblTitleHey".localize()} ",
                style: TextStyles.boldVeryLargeText,
              ),
            ],
          ),
          Text(
            "LblTitleItsHeshamErfan".localize(),
            style: TextStyles.boldVeryLargeText,
          ),
          SizedBox(
              width: resizeDescription ? MediaQuery.of(context).size.width * 0.3 : null,
              child: Text(
                "LblIntroSubtitle".localize(),
                style: TextStyles.boldDisableText,
              )),
          const VerticalSpace(20),
          Row(
            children: [
              MyButton(
                onTap: () => html.window.open("https://api.whatsapp.com/send/?phone=201154351174", 'new tab'),
                text: "",
                isText: false,
                width: 130,
                height: 43,
                gradient: Palette.gradientBlue,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "BtnLetsTalk".localize(),
                    style: TextStyles.boldText.copyWith(color: Palette.creamyLight, fontSize: 13),
                  ),
                  const Icon(
                    FontAwesome.whatsapp,
                    color: Palette.creamyLight,
                    size: 18,
                  ),
                ]),
              ),
              const SizedBox(width: 30),
              MyButton(
                onTap: () {
                  const String url = "https://drive.google.com/uc?export=download&id=1Ub1pxjF0woB4N6sRHyEKuitn-mmmYPH8";
                  html.AnchorElement anchorElement = html.AnchorElement(href: url);
                  anchorElement.download = "Hesham Erfan resume";
                  anchorElement.click();
                },
                text: "",
                isText: false,
                width: 130,
                height: 43,
                gradient: Palette.gradientPrimary,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "BtnMyResume".localize().localize(),
                    style: TextStyles.boldText.copyWith(color: Palette.creamyLight, fontSize: 13),
                  ),
                  const Icon(
                    Icons.download_sharp,
                    color: Palette.creamyLight,
                    size: 18,
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
