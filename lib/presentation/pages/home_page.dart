import 'dart:math';

import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/base_widget_dialog.dart';
import 'package:class_room/ui/widgets/common/global_bottom_sheet.dart';
import 'package:class_room/ui/widgets/common/global_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/confirmation_dialog_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/course_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/filter_advanced_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/filters_widgets.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/adenda_dialog_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/agenda_takeaway_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/feedback_first_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/feedback_second_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/popup_traingular/popup_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/core/extensions/dialog_helper.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);
  PopupMenu menu;
  GlobalKey btnKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyles.caption.withColor(Colors.black).thin,
        ),
        actions: <Widget>[
          //Setting Overflow action items using PopupMenuButton
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Download')),
                PopupMenuItem(child: Text('Delete file')),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                },
                child: Text(
                  'Get alert dialog 1',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                    title: 'Confirmation',
                    content: ConfirmationDialogWidget(),
                    // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                    baseWidgetDialog: BaseWidgetDialog(
                      firstContent: "REVIEW",
                      secondContent: "SUBMIT",
                      padding: 10,
                    ),
                  ).openDialog(context);
                },
                child: Text(
                  'Get alert dialog 2',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                      title: 'Confirmation',
                      content: Text(
                        AppConfig.messageDialog,
                        style: TextStyles.headline4.medium,
                      ),
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
                      content: FilterWidget(AppConfig.assignementStatusList),
                      // Text('You have skipped 12 <b>Questions</b>. Do you want to reciew your assignment or submit it?', style: TextStyles.headline4.medium,),
                      baseWidgetDialog: BaseWidgetDialog(
                        firstContent: "CANCEL",
                        secondContent: "APPLY",
                      )).openDialog(context);
                },
                child: Text(
                  'Get alert dialog 4',
                  style: TextStyles.bodyText2,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                      title: 'Confirmation',
                      content: FilterWidget(AppConfig.subjectList),
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
              RaisedButton(
                onPressed: () {
                  GlobalBottomSheet(
                    title: "Feedback",
                    content: Text(AppConfig.contentBottomSheet,
                        style: TextStyles.bodyText1.normal,
                        textAlign: TextAlign.left),
                  ).openBottomDialog(context);
                },
                child: Text('Get bottomsheet dialog 1'),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalBottomSheet(
                      title: "Agendas",
                      content: AgendaDialogWidget(
                        listItems: AppConfig.agendaList,
                      )).openBottomDialog(context);
                },
                child: Text('Get bottomsheet dialog2'),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalBottomSheet(
                          title: "Agendas and Takeaways",
                          content: AgendaTakewayWidget())
                      .openBottomDialog(context);
                },
                child: Text('Get bottomsheet dialog2'),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalBottomSheet(
                          title: "Feedback", content: FeedbackFirstDialog())
                      .openBottomDialog(context);
                },
                child: Text('Get bottomsheet dialog3'),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalBottomSheet(
                          title: "Feedback", content: FeedbackSecondDialog())
                      .openBottomDialog(context);
                },
                child: Text('Get bottomsheet dialog4'),
              ),
              RaisedButton(
                onPressed: () {
                  gotoAnotherDialog(context);
                },
                key: btnKey,
                child: Text(
                  'Popup',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.neutralGrey,
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }

void stateChanged(bool isShow) {
  print('menu is ${isShow ? 'showing' : 'closed'}');
}

void onClickMenu(MenuItemProvider item) {
  print('Click menu -> ${item.menuTitle}');
}

void onDismiss() {
  print('Menu is dismiss');
}

void gotoAnotherDialog(BuildContext context) {
  PopupMenu menu = PopupMenu(items: [MenuItem(title: "You are doing well", ),],
      // onClickMenu: onClickMenu,
      context: context,
      // stateChanged: stateChanged,
      onDismiss: onDismiss);
  menu.show(widgetKey: btnKey);
}

void clicked(BuildContext context, menu) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(menu),
      action: SnackBarAction(
          label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
}
xyz() => print('xyz function ');

abc() => print('abc function ');

