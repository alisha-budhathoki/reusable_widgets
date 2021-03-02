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
  final baseWidgetDialog;

   GlobalDialog(
      {Key key, this.title, this.content, this.padding, this.baseWidgetDialog});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title == null
          ? Container()
          : Text(
              title,
              style: TextStyles.headline3.semibold,
            ),
      content: content,
      actions: [
        baseWidgetDialog,
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GestureDetector(
        //       onTap: (){
        //         Navigator.of(context).pop();
        //       },
        //       child: Text('DISMISS', style: TextStyles.headline4.withColor(Palette.dialogTextColor),)),
        // ),
      ],
    );
  }

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return AlertDialog(
      title: title == null
          ? Container()
          : Text(
        title,
        style: TextStyles.headline3.semibold,
      ),
      content: content,
      actions: [
        baseWidgetDialog,
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GestureDetector(
        //       onTap: (){
        //         Navigator.of(context).pop();
        //       },
        //       child: Text('DISMISS', style: TextStyles.headline4.withColor(Palette.dialogTextColor),)),
        // ),
      ],
    );

  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return CupertinoAlertDialog(
      title: title == null
          ? Container()
          : Text(
        title,
        style: TextStyles.headline3.semibold,
      ),
      content: content,
      actions: [
        baseWidgetDialog,
      ],
    );
  }
}
