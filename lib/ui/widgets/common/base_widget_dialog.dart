import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:flutter/rendering.dart';

class BaseWidgetDialog extends StatelessWidget {
  final String firstContent, secondContent;
  final Function() onPressedFirstOption, onPressedSecondOption;
  final double padding;
  final bool fromBottomDialog;

  const BaseWidgetDialog({
    Key key,
    this.firstContent,
    this.secondContent,
    this.onPressedFirstOption,
    this.onPressedSecondOption,
    this.padding,
    this.fromBottomDialog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: fromBottomDialog == true
          ? MainAxisAlignment.end
          : MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: onPressedFirstOption,
          child: firstContent == null
              ? Container()
              : Text(firstContent,
                  style: TextStyles.bodyText1
                      .withColor(Palette.colorPrimary)
                      .semibold),
        ),
        FlatButton(
          onPressed: onPressedSecondOption,
          child: secondContent == null
              ? Container()
              : Text(
                  secondContent,
                  style: TextStyles.bodyText1
                      .withColor(Palette.colorPrimary)
                      .semibold,
                ),
        ),
      ],
    );
  }
}
