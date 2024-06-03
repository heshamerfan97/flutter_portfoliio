import 'package:flutter/material.dart';

import '../../services/sailor.dart';
import '../helper/export.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MAppBar(
    this.title, {
    Key? key,
    this.trailing,
    this.hasBackButton = true,
    this.beforePop,
  }) : super(key: key);

  final bool hasBackButton;
  final String title;
  final Widget? trailing;
  final void Function()? beforePop;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.transparent,
      elevation: 0,
      leading: hasBackButton
          ? InkWell(
              onTap: () {
                if (beforePop != null) {
                  beforePop!();
                }
                Sailor.back();
              },
              child: const Icon(Icons.arrow_back_ios, color: Palette.black))
          : null,
      leadingWidth: 80,
      centerTitle: true,
      title: Text(title),
      titleTextStyle: TextStyles.boldLargeText,
      actions: [
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
