import 'package:class_room/ui/widgets/common/base_widget_dialog.dart';
import 'package:class_room/ui/widgets/common/global_text_field.dart';
import 'package:flutter/material.dart';

class FeedbackSecondDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: new Column(
          children: [
            GlobalTextField(
              isBorder: true,
              hintText: "Message Title",
            ),
            GlobalTextField(
                isBorder: true,
                isLarge: true,
                hintText: "Type your message here..."),
            BaseWidgetDialog(firstContent: "CANCEL",secondContent: "SEND FEEDBACK",fromBottomDialog: true,)
          ],
        ),
      ),
    );
  }
}
