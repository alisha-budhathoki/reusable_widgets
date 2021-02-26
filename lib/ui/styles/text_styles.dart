import 'dart:ui';

import 'package:class_room/core/constants/configs.dart';

import 'color_pallette.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static const _base = TextStyle(
    color: Palette.black,
    fontFamily: AppConfig.fontFamily
  );

  static final headline1 = _base.copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static final headline2 = _base.copyWith(
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
  );

  static final headline3 = _base.copyWith(
    fontSize: 16.0,
  );

  static final headline4 = _base.copyWith(
    fontSize: 14.0,
  );

  static final headline5 = _base.copyWith(
    fontSize: 13.0,
    color: Palette.colorPrimary,
    fontWeight: FontWeight.w300,
  );

  static final headline6 = _base.copyWith(
    fontSize: 12.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final bodyText1 = _base.copyWith(
    fontSize: 11.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final bodyText2 = _base.copyWith(
    fontSize: 10.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final caption = _base.copyWith(
    fontSize: 11.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final subtitle2 = _base.copyWith(
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
}