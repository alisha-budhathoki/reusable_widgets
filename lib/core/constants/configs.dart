class AppConfig {
  static const String appName = 'Fuse Classroom';
  static const String fontFamilyTexts = 'Sans';
  static const String fontFamilyBtns = 'OpenSans';
  static const Pattern patternEmail =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  //listview constants
  static const String contentBottomSheet =
      "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. First, follow the local setup section described in ‘Local setup’ to make sure the process works before migrating onto a cloud system like Travis.";

  static const String messageDialog =
      "Do you want to leave the platfrom to join the online class in zoom or continue in the";
  static const List<String> assignementStatusList = [
    "Not Submitted",
    "Over Due",
    "Completed",
  ];
  static const List<String> subjectList = [
    "All",
    "Machine Learning",
    "Deep Learning",
    "Computer Learning"
  ];

  static const List<String> agendaList = [
    "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API, and the iOS device.batteryLevel API, via a single platform message, getBatteryLevel().",
    "Consider both internal and external actions...",
    "Ravi",
    "Manoj",
    "Kripa",
    "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API, and the iOS device.batteryLevel API, via a single platform message, getBatteryLevel().",
  ];

  static const List<String> takeawayList = [
    "The following code demonstrates how to call a platform-specific API to retrieve and display the current battery level. It uses the Android BatteryManager API, and the iOS device.batteryLevel API, via a single platform message, getBatteryLevel().",
    "Consider both internal and external actions...",
    "Ravi",
    "Manoj",
    "Kripa"
  ];
}
