import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/global_dialog.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'course_dialog_content.dart';

class CourseDialog extends StatelessWidget {
  final String alertTitle;
  final String firstContent;
  final String secondContent;
  final String thirdContent;
  final List<String> namesInstructor;
  final List<String> namesCoordinator;
  final List<String> namesSAdmin;

  const CourseDialog({Key key, this.alertTitle, this.firstContent, this.secondContent, this.thirdContent, this.namesInstructor, this.namesCoordinator, this.namesSAdmin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalDialog(
      title: alertTitle,
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            CourseDialogContent(firstContent, namesInstructor),
            SizedBox(height: 20,),
            CourseDialogContent(secondContent, namesSAdmin),
            SizedBox(height: 20,),
            CourseDialogContent(thirdContent, namesCoordinator),
          ],
        ),
      ),
    );
  }
}
