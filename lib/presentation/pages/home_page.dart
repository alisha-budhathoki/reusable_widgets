import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/core/locator.dart';
import 'package:class_room/presentation/pages/textfield_page.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/global_bottom_sheet.dart';
import 'package:class_room/ui/widgets/common/global_dialog.dart';
import 'package:class_room/ui/widgets/common/tooltip_shape_border.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/confirmation_dialog_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/course_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/filter_advanced_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/alert_dialog_widgets/filters_widgets.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/adenda_dialog_widget.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/agenda_takeaway_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/feedback_first_dialog.dart';
import 'package:class_room/ui/widgets/popup_dialogs/bottom_sheet_widgets/feedback_second_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/core/extensions/dialog_helper.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);
  GlobalKey btnKey = GlobalKey();
  final DialogService _dialogService = locator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          title,
          style:
              TextStyles.headline2.bold.withColor(Palette.warningLightYellow),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Download', 'Delete file'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
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
                  showDialog(
                      context: context,
                      child: GlobalDialog(
                        title: 'Confirmation',
                        content: CourseDialog(),
                        firstActionValue: "",
                        secondActionValue: "DISMISS",
                        firstActionPressed: () {},
                        secondActionPressed: () {},
                      ));
                  // GlobalDialog(
                  //   title: 'Confirmation',
                  //   content: CourseDialog(),
                  //   firstActionValue: "",
                  //   secondActionValue: "DISMISS",
                  //   firstActionPressed: () {},
                  //   secondActionPressed: () {},
                  // ).openDialog(context);
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
                    firstActionValue: "REVIEW",
                    secondActionValue: "SUBMIT",
                  ).openDialog(context);
                },
                child: Text(
                  'Get alert dialog 2',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                    //todo: function passing
                    title: 'Confirmation',
                    content: Text(
                      AppConfig.messageDialog,
                      style: TextStyles.bodyText1.normal,
                    ),
                    firstActionValue: 'SWITCH TO ZOOM',
                    secondActionValue: "CONTINUE IN PLATFORM",
                    firstActionPressed: _firstActionPressed,
                    secondActionPressed: _secondActionPressed,
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
                    firstActionValue: "CANCEL",
                    secondActionValue: "APPLY",
                  ).openDialog(context);
                },
                child: Text(
                  'Get alert dialog 4',
                  style: TextStyles.bodyText2,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                    title: 'Filters',
                    content: FilterWidget(AppConfig.subjectList),
                    firstActionValue: "CANCEL",
                    secondActionValue: "APPLY",
                  ).openDialog(context);
                },
                child: Text('Get alert dialog 5'),
              ),
              RaisedButton(
                onPressed: () {
                  GlobalDialog(
                    content: FilterAdvancedWidget(),
                    firstActionValue: "CANCEL",
                    secondActionValue: "SUBMIT",
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
                        style: TextStyles.bodyText1.normal
                            .withColor(Palette.neutralGrey),
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
              Tooltip(
                textStyle: TextStyles.headline6.withColor(Palette.white).bold,
                message: "You are doing well",
                child: Text('null'),
                padding: EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Palette.darkTextColor,
                  shape: TooltipShapeBorder(),
                  shadows: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0,
                        offset: Offset(2, 2))
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextfieldPage()));
                },
                child: Text(
                  'Goto Textfield classes',
                ),
              ),
              SizedBox(height: 50),
              Text(
                "practice",
                style: TextStyles.bodyText2.withColor(Colors.black),
              ),
              Text(
                "practice",
                style: GoogleFonts.openSans(fontSize: 24),
              ),
              RaisedButton(
                  onPressed: () async => await _dialogService.showDialog(
                        title: 'The Basic Dialog',
                        description:
                            'This is the description for the dialog that shows up under the title',
                        buttonTitle: 'Main title',
                        cancelTitle: 'Cancel',
                      ),
                  child: Text('open service dialog'))
            ],
          ),
        ),
      ),
    );
  }

  _firstActionPressed() {
    print('snnsndbjsb');
  }

  _secondActionPressed() {
    print('pressed action');
  }

  void handleClick(String value) {
    switch (value) {
      case 'Download':
        break;
      case 'Delete file':
        break;
    }
  }
}

xyz() => print('xyz function ');

abc() => print('abc function ');
