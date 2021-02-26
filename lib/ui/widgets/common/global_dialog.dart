import 'package:class_room/ui/styles/color_pallette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';


class GlobalDialog  extends StatelessWidget {
  final Widget title;
  final Widget content;
  final EdgeInsets padding;

  const GlobalDialog({Key key, this.title, this.content, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Text('Dismiss', style: TextStyles.headline4.withColor(Palette.dialogTextColor),)),
      ),
      ],
    );
  }
}
