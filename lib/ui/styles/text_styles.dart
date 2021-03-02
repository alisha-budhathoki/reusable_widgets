import 'dart:ui';

import 'package:class_room/core/constants/configs.dart';

import 'color_palette.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const _base = TextStyle(
    color: Palette.primaryTextGrey,
  );

  static final headline1 = _base.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w900,
    fontFamily: AppConfig.fontFamilyTexts,
  );

  static final headline2 = _base.copyWith(
      fontSize: 19.0,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w700,
      fontFamily: AppConfig.fontFamilyTexts,
  );

  static final headline3 = _base.copyWith(
      fontSize: 17.0,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w400,
      fontFamily: AppConfig.fontFamilyTexts,
  );

  static final headline4 = _base.copyWith(
      fontSize: 16.0,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
      fontFamily: AppConfig.fontFamilyTexts,
  );

  static final headline5 = _base.copyWith(
    fontSize: 13.0,
    letterSpacing: 0.2,
    fontWeight: FontWeight.w300,
    fontFamily: AppConfig.fontFamilyTexts,
  );

  static final headline6 = _base.copyWith(
    fontSize: 10.0,
    letterSpacing: 0.20,
    fontWeight: FontWeight.w200,
    fontFamily: AppConfig.fontFamilyTexts,
  );
  static final bodyText1 = _base.copyWith(
    fontSize: 14.0,
    letterSpacing: 0.2,
    fontWeight: FontWeight.w300,
    fontFamily: AppConfig.fontFamilyTexts,
  );
  static final bodyText2 = _base.copyWith(
    fontSize: 12.0,
    letterSpacing: 0.2,
    fontWeight: FontWeight.w200,
    fontFamily: AppConfig.fontFamilyTexts,
  );
  static final button = _base.copyWith(
      fontSize: 12.0,
      letterSpacing: 0.2,
      fontWeight: FontWeight.w400,
      fontFamily: AppConfig.fontFamilyBtns,
  );

  static final caption = _base.copyWith(
    fontSize: 11.0,
    // letterSpacing: 0.2,
    fontWeight: FontWeight.w200,
    fontFamily: AppConfig.fontFamilyTexts,
  );
  static final subtitle2 = _base.copyWith(
    fontSize: 8.0,
    letterSpacing: 0.2,
    fontWeight: FontWeight.w200,
    fontFamily: AppConfig.fontFamilyTexts,
  );
}
