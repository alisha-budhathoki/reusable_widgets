import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class GlobalDialog extends PlatformWidget {
  final String title;
  final Widget content;
  final EdgeInsets padding;
  final String firstActionValue;
  final String secondActionValue;
  final Function() firstActionPressed;
  final Function() secondActionPressed;

  GlobalDialog({
    Key key,
    this.title,
    this.content,
    this.padding,
    this.firstActionValue,
    this.secondActionValue,
    this.firstActionPressed,
    this.secondActionPressed,
  });

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AlertDialog(
      title: title == null
          ? Container()
          : Text(
              title,
              style: TextStyles.headline4.semibold
                  .withColor(Palette.darkTextColor),
            ),
      content: content,
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
              firstActionPressed();
            },
            child: Text(
              firstActionValue,
              style:
                  TextStyles.bodyText1.withColor(Palette.colorPrimary).semibold,
            )),
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
              secondActionPressed();
            },
            child: Text(secondActionValue,
                style: TextStyles.bodyText1
                    .withColor(Palette.colorPrimary)
                    .semibold)),
      ],
    );
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: title == null
          ? Container()
          : Text(
              title,
              style: TextStyles.headline3.semibold,
            ),
      content: content,
      actions: [
        FlatButton(
            onPressed: null,
            child: Text(
              firstActionValue,
              style: TextStyles.headline4
                  .withColor(Palette.dialogTextColor)
                  .semibold,
            )),
        FlatButton(
            onPressed: null,
            child: Text(secondActionValue,
                style: TextStyles.headline4
                    .withColor(Palette.dialogTextColor)
                    .semibold)),
      ],
    );
  }
}
