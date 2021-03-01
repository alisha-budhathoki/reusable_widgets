import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';


class ConfirmationDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'You have skipped ',
              style: TextStyles.headline4.medium),
          TextSpan(
              text: '12 Questions. ',
              style: TextStyles.headline4.bold),
          TextSpan(
              text:
              'Do you want to review your assignment or submit it?',
              style: TextStyles.headline4.medium)
        ],
      ),
    );
  }
}
