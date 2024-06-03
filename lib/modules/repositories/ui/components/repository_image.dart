import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/modules/repositories/models/git_repository.dart';
import 'package:portfolio/shared/view/helper/export.dart';

class RepositoryImage extends StatelessWidget {
  const RepositoryImage(this.repository, {this.fullScreen = true, super.key});

  final GitRepository repository;
  final bool fullScreen;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final width = fullScreen ? deviceWidth - 64 : deviceWidth * 0.45;
    return InkWell(
      onTap: () => html.window.open(repository.url, 'new tab'),
      child: SizedBox(
        height: width / 2,
        width: width,
        child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: Palette.gradientPrimary,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(33),
                    child: Image.asset(
                      repository.image,
                      width: width - 8,
                      height: width / 2 - 8,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                height: width/6,
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Palette.black, Palette.transparent], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(33), bottomRight: Radius.circular(33)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerLeft,
                child: Text(repository.title, style: TextStyles.boldLargeText.copyWith(color: Palette.white),),
              )),
              Positioned(
                top: 16,
                  right: 16,
                  child: Icon(FontAwesome.github_squared))
            ],
          ),
      ),
    );
  }
}
