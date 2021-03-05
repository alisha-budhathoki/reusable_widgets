import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/presentation/pages/home_page.dart';
import 'package:class_room/ui/styles/app_themes.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(
    MyApp()
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
  );}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      theme: AppThemes.light,
      home: MyHomePage(
        title: AppConfig.appName,
      ),
    );
  }

}