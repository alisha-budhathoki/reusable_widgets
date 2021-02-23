import 'package:class_room/styles/app_themes.dart';
import 'package:class_room/styles/color_pallette.dart';
import 'package:class_room/styles/style_extension.dart';
import 'package:class_room/styles/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: AppThemes.light,
      home: MyHomePage(
        title: appName,
      ),
    );
  }

}