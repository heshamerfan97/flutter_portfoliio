import 'package:flutter/material.dart';
import 'package:portfolio/shared/view/components/my_button.dart';

import '../../services/sailor.dart';
import '../helper/export.dart';

class MyDialog {
  /// [context] is the context provided from the parent in the tree
  /// [title] is the title shown in top of the dialog in bold black style
  /// [subtitle] is the subtitle shown in top of the dialog in grey basic style by default and it depends on [greySubtitle]
  /// [positiveResponseText] is the text shown in primary color button (Represents positive action)
  /// [negativeResponseText] is the text shown in grey color button (Represents negative action)
  /// [positiveTodo] is the function to be called when user clicks the primary/positive button
  /// [negativeTodo] is the function to be called when user clicks the grey/negative button, and if no function is provide it just close the dialog with false value
  final BuildContext context;
  final String title, subtitle, positiveResponseText;
  final String? negativeResponseText;
  final bool greySubtitle, dismissible;
  final Function positiveTodo;
  final Function? negativeTodo;

  MyDialog({
    required this.context,
    required this.title,
    required this.subtitle,
    required this.positiveResponseText,
    required this.positiveTodo,
    this.negativeResponseText,
    this.negativeTodo,
    this.greySubtitle = true,
    this.dismissible = true,
  });

  Future<dynamic> showHenkelDialog() => showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (ctx) => Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            insetPadding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(title, style: TextStyles.boldText, textAlign: TextAlign.start,),
                  const VerticalSpace(10),
                  Text(subtitle, style: (greySubtitle ? TextStyles.boldDisableText : TextStyles.boldText).copyWith(fontSize: 13), textAlign: TextAlign.start,),
                  const VerticalSpace(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (negativeResponseText != null)
                        SizedBox(
                          width: 130,
                          child: MyButton(
                              onTap: () {
                                if (negativeTodo != null) {
                                  negativeTodo!();
                                } else {
                                  Sailor.back(false);
                                }
                              },
                              color: Palette.grey,
                              text: negativeResponseText!,
                              isActive: true),
                        ),
                      const HorizontalSpace(10),
                      SizedBox(
                        width: 130,
                        child: MyButton(
                            onTap: () async {
                              positiveTodo();
                            },
                            color: Palette.getSecondaryColor(),
                            text: positiveResponseText,
                            isActive: true),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ));
}
