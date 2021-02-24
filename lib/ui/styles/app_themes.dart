import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

import 'color_pallette.dart';

class AppThemes {
  static ThemeData get _baseTheme =>
      ThemeData(
        primaryColor: Palette.colorPrimary,
        primaryColorDark: Palette.colorSecondary,
        primaryColorLight: Palette.colorPrimaryDim,
        accentColor: Palette.colorPrimary,
        splashColor: Colors.transparent,
        errorColor: Palette.errorRed,
        indicatorColor: Palette.colorPrimary,
        visualDensity: VisualDensity.standard,
        accentColorBrightness: Brightness.dark,
        primaryColorBrightness: Brightness.light,
        // Define the default font family.
        fontFamily: AppConfig.fontFamily,
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: _textTheme,
      );

  static ThemeData get light =>
      _baseTheme.copyWith(
        brightness: Brightness.light,

      );

  static TextTheme get _textTheme =>
      TextTheme(
        // headline1: TextStyles.headline1.normal.thin,
        headline1: TextStyles.headline1,
        headline2: TextStyles.headline2,
        headline3: TextStyles.headline3,
        headline4: TextStyles.headline4,
        headline5: TextStyles.headline5,
        headline6: TextStyles.headline6,
        caption: TextStyles.caption,
        subtitle2: TextStyles.subtitle2

        // subtitle: TextStyle(fontSize: 14.0),
      );
}