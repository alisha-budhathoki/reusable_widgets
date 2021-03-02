import 'package:class_room/core/constants/configs.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

import 'color_palette.dart';

class AppThemes {
  static ThemeData get _baseTheme => ThemeData(
        primaryColor: Palette.colorPrimary,
        primaryColorDark: Palette.colorSecondary,
        primaryColorLight: Palette.colorPrimaryDim,
        accentColor: Palette.colorPrimary,
        errorColor: Palette.errorRed,
        indicatorColor: Palette.colorPrimary,
        visualDensity: VisualDensity.standard,
        accentColorBrightness: Brightness.dark,
        primaryColorBrightness: Brightness.light,
        textTheme: _textTheme,
      );

  static ThemeData get light => _baseTheme.copyWith(
        brightness: Brightness.light,
      );

  static TextTheme get _textTheme => TextTheme(
      headline1: TextStyles.headline1,
      headline2: TextStyles.headline2,
      headline3: TextStyles.headline3,
      headline4: TextStyles.headline4,
      headline5: TextStyles.headline5,
      headline6: TextStyles.headline6,
      bodyText1: TextStyles.bodyText1,
      bodyText2: TextStyles.bodyText2,
      button: TextStyles.button,
      caption: TextStyles.caption,
      subtitle2: TextStyles.subtitle2

      // subtitle: TextStyle(fontSize: 14.0),
      );
}
