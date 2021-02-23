import 'dart:ui';

import 'color_pallette.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static const _base = TextStyle(
    color: Palette.black,
  );

  static final headline1 = _base.copyWith(
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
  );

  static final headline2 = _base.copyWith(
    fontSize: 26.0,
    fontWeight: FontWeight.w600,
  );

  static final headline3 = _base.copyWith(
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  );

  static final headline4 = _base.copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static final headline5 = _base.copyWith(
    fontSize: 15.0,
    color: Palette.colorPrimary,
    fontWeight: FontWeight.w300,
  );

  static final headline6 = _base.copyWith(
    fontSize: 11.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final caption = _base.copyWith(
    fontSize: 11.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
  static final subtitle2 = _base.copyWith(
    fontSize: 11.0,
    color: Palette.black,
    fontWeight: FontWeight.w200,
  );
}