import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class GlobalBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;

  const GlobalBottomSheet({
    Key key,
    this.title,
    this.content,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      children: [
        new ListTile(
            contentPadding: EdgeInsets.all(0),
            tileColor: Palette.primaryLightGreen,
            title: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                title,
                style: TextStyles.headline2.semibold
                    .withColor(Palette.darkTextColor),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.close),
            ),
            onTap: () => {Navigator.pop(context)}),
        Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 30, right: 30, bottom: 35),
            child: content)
      ],
    ));
  }
}
