import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class GlobalBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;
  const GlobalBottomSheet(
      {Key key, this.title, this.content, })
      : super(key: key);
  // String content =
  //     "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. First, follow the local setup section described in ‘Local setup’ to make sure the process works before migrating onto a cloud system like Travis.";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Wrap(
      children: [
        new ListTile(
            tileColor: Palette.primaryLightGreen,
            title: new Text(
              title,
              style: TextStyles.headline2.semibold,
            ),
            trailing: new Icon(Icons.close),
            onTap: () => {}),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: content
        )
      ],
    ));
  }
}
