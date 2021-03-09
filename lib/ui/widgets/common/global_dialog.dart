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


  GlobalDialog(
      {Key key, this.title, this.content, this.padding, this.firstActionValue, this.secondActionValue});


  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AlertDialog(
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
              style: TextStyles.headline4.withColor(Palette.dialogTextColor),
            )),
        FlatButton(
            onPressed: null,
            child: Text(secondActionValue,
                style:
                TextStyles.headline4.withColor(Palette.dialogTextColor))),
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
              style: TextStyles.headline4.withColor(Palette.dialogTextColor),
            )),
        FlatButton(
            onPressed: null,
            child: Text(secondActionValue,
                style:
                TextStyles.headline4.withColor(Palette.dialogTextColor))),
      ],
    );
  }
}
