import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/ui/styles/app_themes.dart';
import 'package:class_room/ui/styles/color_pallette.dart';
import 'package:class_room/ui/styles/style_extension.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: AppConfig.appName,
      theme: AppThemes.light,
      home: MyHomePage(
        title: AppConfig.appName,
      ),
    );
  }

}