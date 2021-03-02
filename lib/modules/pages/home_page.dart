import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/base_widget_dialog.dart';
import 'package:class_room/ui/widgets/common/global_dialog.dart';
import 'package:class_room/ui/widgets/dialogs/course_dialog.dart';
import 'package:class_room/ui/widgets/dialogs/dialog_widgets/confirmation_dialog_widget.dart';
import 'package:class_room/ui/widgets/dialogs/dialog_widgets/filter_advanced_widget.dart';
import 'package:class_room/ui/widgets/dialogs/dialog_widgets/filters_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/core/extensions/dialog_helper.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final String messageDialog= "Do you want to leave the platfrom to join the online class in zoom or continue in the";
  List<String> assignementStatusList = [
    "Not Submitted",
    "Over Due",
    "Completed",
  ];
  List<String> subjectList = [
    "All",
    "Machine Learning",
    "Deep Learning",
    "Computer Learning"
  ];

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
              GlobalDialog(
                title: 'Confirmation',
                content: CourseDialog(),
                // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                baseWidgetDialog: BaseWidgetDialog(
                  firstContent: null,
                  secondContent: "DISMISS",
                  onPressedFirst: abc(),
                  onPressedSecond: xyz(),
                  padding: 10,
                ),
              ).openDialog(context);
            }, child: Text('Get alert dialog 1'),),
          RaisedButton(
            onPressed: () {
              GlobalDialog(
                title: 'Confirmation',
                content: ConfirmationDialogWidget(),
                // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                baseWidgetDialog: BaseWidgetDialog(
                  firstContent: "REVIEW",
                  secondContent: "SUBMIT",
                  onPressedFirst: abc(),
                  onPressedSecond: xyz(),
                  padding: 10,
                ),
              ).openDialog(context);
            },
            child: Text('Get alert dialog 2'),
          ),
          RaisedButton(
            onPressed: () {
              GlobalDialog(
                  title: 'Confirmation',
                  content: Text(messageDialog, style: TextStyles.headline4.medium,),
                  // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                  baseWidgetDialog: BaseWidgetDialog(
                    firstContent: "SWITCH TO ZOOM",
                    secondContent: "CONTINUE IN PLATFORM",
                  )
                  // BaseWidgetDialog("SWITCH TO ZOOM", "CONTINUE IN PLATFORM", xyz(), abc()),
                  ).openDialog(context);
            },
            child: Text('Get alert dialog 3'),
          ),
          RaisedButton(
            onPressed: () {
              GlobalDialog(
                  title: 'Confirmation',
                  content: FilterWidget(assignementStatusList),
                  // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                  baseWidgetDialog: BaseWidgetDialog(
                    firstContent: "CANCEL",
                    secondContent: "APPLY",
                  )
                // BaseWidgetDialog("SWITCH TO ZOOM", "CONTINUE IN PLATFORM", xyz(), abc()),
              ).openDialog(context);
            },
            child: Text('Get alert dialog 4'),
          ),
          RaisedButton(
            onPressed: () {
              GlobalDialog(
                  title: 'Confirmation',
                  content: FilterWidget(subjectList),
                  // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                  baseWidgetDialog: BaseWidgetDialog(
                    firstContent: "CANCEL",
                    secondContent: "APPLY",
                  )
                // BaseWidgetDialog("SWITCH TO ZOOM", "CONTINUE IN PLATFORM", xyz(), abc()),
              ).openDialog(context);
            },
            child: Text('Get alert dialog 5'),
          ),
          RaisedButton(
            onPressed: () {
              GlobalDialog(
                  content: FilterAdvancedWidget(),
                  baseWidgetDialog: BaseWidgetDialog(
                    firstContent: "CANCEL",
                    secondContent: "APPLY",
                  )
                // BaseWidgetDialog("SWITCH TO ZOOM", "CONTINUE IN PLATFORM", xyz(), abc()),
              ).openDialog(context);
            },
            child: Text('Get alert dialog 6'),
          ),
          RaisedButton(
            onPressed: () {},
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

xyz() => print('xyz function ');

abc() => print('abc function ');
