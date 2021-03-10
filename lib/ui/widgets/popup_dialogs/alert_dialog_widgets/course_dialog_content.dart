import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class CourseDialogContent extends StatelessWidget {
  final String firstContent;
  final List<String> firstContentValues;

  CourseDialogContent(this.firstContent, this.firstContentValues);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 100,
            child: Text(
              firstContent,
              style: TextStyles.bodyText1.medium,
            )),
        Container(
          width: 90,
          child: Wrap(
            children: getTexts(firstContentValues),
          ),
        )
      ],
    );
  }

  List<Widget> getTexts(List<String> names) {
    return names
        .asMap()
        .map((i, element) {
          final bool isLast = i == names.length - 1;
          return MapEntry(
              i,
              Text(
                isLast ? element : element + ", ",
                style: TextStyles.bodyText1.normal,
              ));
        })
        .values
        .toList();
  }
}
