import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:flutter/rendering.dart';

class BaseWidgetDialog extends StatelessWidget {
  final String firstContent, secondContent;
  final Function onPressedFirst, onPressedSecond;
  final double padding;
  final bool fromBottomDialog;

  const BaseWidgetDialog(
      {Key key,
      this.firstContent,
      this.secondContent,
      this.onPressedFirst,
      this.onPressedSecond,
      this.padding,
      this.fromBottomDialog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: fromBottomDialog == true
          ? MainAxisAlignment.end
          : MainAxisAlignment.center,
      children: [
        FlatButton(
          child: firstContent == null
              ? Container()
              : Text(firstContent,
                  style: TextStyles.headline4
                      .withColor(Palette.dialogTextColor)),
        ),
        FlatButton(
          child: secondContent == null
              ? Container()
              : Text(secondContent,
                  style: TextStyles.headline4
                      .withColor(Palette.dialogTextColor)),
        ),
      ],
    );
  }
}
