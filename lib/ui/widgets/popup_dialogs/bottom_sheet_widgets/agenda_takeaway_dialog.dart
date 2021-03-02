import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:class_room/ui/styles/style_extension.dart';

import 'adenda_dialog_widget.dart';

class AgendaTakewayWidget extends StatelessWidget {
  final List<String> agendaList = [
    "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API, and the iOS device.batteryLevel API, via a single platform message, getBatteryLevel().",
    "Consider both internal and external actions...",
    "Ravi",
    "Manoj",
    "Kripa"
  ];
  final List<String> takeawayList = [
    "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API, and the iOS device.batteryLevel API, via a single platform message, getBatteryLevel().",
    "Consider both internal and external actions...",
    "Ravi",
    "Manoj",
    "Kripa"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'AGENDAS',
              style: TextStyles.headline3.semibold,
            )),
        SizedBox(height: 10,),
        AgendaDialogWidget(listItems: agendaList,),
        SizedBox(height: 10,),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'TAKEAWAYS',
              style: TextStyles.headline3.semibold,
            )),
        SizedBox(height: 10,),
        AgendaDialogWidget(listItems: takeawayList,),
      ],
    );
  }
}
