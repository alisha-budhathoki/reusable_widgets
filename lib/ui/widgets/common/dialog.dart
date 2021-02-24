import 'package:class_room/ui/widgets/dialogs/course_dialog.dart';
import 'package:flutter/material.dart';

class AllDialogs extends StatefulWidget {
  final String alertTitle;
  final String firstContent;
  final String secondContent;
  final String thirdContent;
  final List<String> namesInstructor;
  final List<String> namesCoordinator;
  final List<String> namesSAdmin;


  const AllDialogs(
      {this.alertTitle,
      this.firstContent,
      this.secondContent,
      this.thirdContent,
      this.namesInstructor,
      this.namesCoordinator,
      this.namesSAdmin});

  @override
  _AllDialogsState createState() =>
      _AllDialogsState();
}

class _AllDialogsState extends State<AllDialogs> {
  // _AllDialogsState(String alertTitle, String firstContent, String secondTopic,
  //     String thirdTopic);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.alertTitle,
        style: TextStyle(fontSize: 16),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            CourseDialog(widget.firstContent, widget.secondContent, widget.thirdContent, widget.namesInstructor),
            CourseDialog(widget.secondContent, widget.secondContent, widget.thirdContent, widget.namesInstructor),
          ],
        ),
      ),
      actions: [
        // cancelButton,
        // continueButton,
      ],
    );
  }
}
