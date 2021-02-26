import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class CourseDialogContent extends StatelessWidget {
  final String firstContent;
  final List<String> namesInstructor;

  CourseDialogContent(this.firstContent, this.namesInstructor);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 120,
            child: Text(
              firstContent,
              style: TextStyles.headline4.medium,
            )),
        Container(
          width: 100,
          // color: Colors.blue,
          child: Wrap(
            children: getTexts(namesInstructor),
          ),
        )
      ],
    );
  }

  List<Widget> getTexts(List<String> names) {
    // print(names.indexOf(e));
    return names
        .asMap()
        .map((i, element) {
          final bool isLast = i == names.length - 1;
          return MapEntry(
              i,
              Text(
                isLast ? element : element + ",",
                style: TextStyles.headline4.normal,
              ));
        })
        .values
        .toList();
  }
}
