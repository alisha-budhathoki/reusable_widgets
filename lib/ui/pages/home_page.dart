import 'package:class_room/ui/styles/color_pallette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/dialog.dart';
import 'package:class_room/ui/widgets/dialogs/course_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/core/extensions/dialog_helper.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyles.subtitle2.withColor(Palette.white).thin,
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
            CourseDialog(alertTitle: "Course by",
              firstContent: "Instructor",
              secondContent: "School Admin",
              thirdContent: "Co-ordinator",
              namesInstructor: ["Ravi", "Ravina", "Ravi","Manoj", "Kripa"],
              namesSAdmin: ["Salma"],
              namesCoordinator: ["Aakash"],).openDialog(context);
              // showDialog(
              //     context: context,
              //     // barrierDismissible: false,
              //     child: new AllDialogs(
              //       alertTitle: "Course by",
              //       firstContent: "Instructor",
              //       secondContent: "School Admin",
              //       thirdContent: "Co-ordinator",
              //       namesInstructor: ["Ravi", "Ravina", "Ravi"],
              //       namesSAdmin: ["Salma"],
              //       namesCoordinator: ["Aakash"],
              //     ));
            },
            child: Text('Get alert dialog 1',style:TextStyles.headline1.withColor(Palette.colorPrimary).thin),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 2'),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 3'),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 4'),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 5'),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 6'),
          ),
          RaisedButton(
            onPressed: () {
              // Utility.getInstance().showAlertDialog(
              //     context, 'Rewind ', 'You will never be satisfied.');
            },
            child: Text('Get alert dialog 7'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.neutralGrey,
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
