import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/core/locator.dart';
import 'package:class_room/presentation/pages/home_page.dart';
import 'package:class_room/ui/styles/app_themes.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      title: AppConfig.appName,
      theme: AppThemes.light,
      home: MyHomePage(
        title: AppConfig.appName,
      ), // Wrap your app,
    );
  }
}
