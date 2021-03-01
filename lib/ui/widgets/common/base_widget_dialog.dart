import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class BaseWidgetDialog extends StatelessWidget {
  final String firstContent, secondContent;
  final Function onPressedFirst, onPressedSecond;
  final double padding;

  const BaseWidgetDialog(
      {Key key,
      this.firstContent,
      this.secondContent,
      this.onPressedFirst,
      this.onPressedSecond,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {
              print('djbjdbs');
              // onPressedFirst;
              // Navigator.of(context).pop();
            },
            child: FlatButton(
              child: Text(firstContent,  style: TextStyles.headline4.withColor(Palette.dialogTextColor)),
            )),
        GestureDetector(
            onTap: () {
              onPressedSecond;
              // Navigator.of(context).pop();
            },
            child:  FlatButton(
              child: Text(secondContent,  style: TextStyles.headline4.withColor(Palette.dialogTextColor)),
            )),
      ],
    );
  }
}
