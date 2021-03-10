import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/global_dialog.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'course_dialog_content.dart';

class CourseDialog extends StatelessWidget {
  final String firstContent = "Instructor";
  final String secondContent = "School Admin";
  final String thirdContent = "Co-ordinator";
  final List<String> firstContentValues= ["Ravi", "Ravina", "Ravi", "Manoj", "Kripa"];
  final List<String> namesCoordinator= ["Aakash"];
  final List<String> namesSAdmin = ["Salma"];

  CourseDialog();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          CourseDialogContent(firstContent, firstContentValues),
          SizedBox(height: 20,),
          CourseDialogContent(secondContent, namesSAdmin),
          SizedBox(height: 20,),
          CourseDialogContent(thirdContent, namesCoordinator),
        ],
      ),
    );
  }
}
