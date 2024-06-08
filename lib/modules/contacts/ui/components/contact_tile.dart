import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio/modules/contacts/models/contact.dart';

import '../../../../application/application.dart';
import '../../../../shared/view/helper/palette.dart';
import '../../../../shared/view/helper/space.dart';
import '../../../../shared/view/helper/text_styles.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(this.contact, {super.key});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 130,
        child: InkWell(
          onTap: () => html.window.open(contact.url, 'new tab'),
          child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => (Application.deviceDarkTheme?Palette.gradientBlue:Palette.gradientPrimary).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Row(
              children: [
                Icon(contact.iconData),
                const HorizontalSpace(8),
                Text(contact.title, style: TextStyles.boldLargeText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
