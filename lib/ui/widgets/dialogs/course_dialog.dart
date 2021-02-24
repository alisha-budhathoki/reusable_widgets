import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDialog extends StatelessWidget {
  final String firstContent;
  final String secondContent;
  final String thirdContent;
  final List<String> namesInstructor;

  CourseDialog(
      this.firstContent, this.secondContent, this.thirdContent, this.namesInstructor);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 120, child: Text(firstContent)),
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
          return MapEntry(i, Text(isLast ? element : element + ","));
        })
        .values
        .toList();
  }
}
