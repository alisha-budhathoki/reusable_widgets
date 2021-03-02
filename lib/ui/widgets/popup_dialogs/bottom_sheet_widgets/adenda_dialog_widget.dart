import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class AgendaDialogWidget extends StatelessWidget {
  final List<String> listItems;


  const AgendaDialogWidget({Key key, this.listItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          itemCount: listItems.length, itemBuilder: (context, index) {
            return Text(listItems[index],
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyles.bodyText1.normal,
            );
      }),
    );
  }
}
