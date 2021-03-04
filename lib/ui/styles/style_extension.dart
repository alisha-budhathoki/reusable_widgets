import 'package:flutter/cupertino.dart';

import 'color_palette.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);

  TextStyle get primary => copyWith(color: Palette.colorPrimary);

  TextStyle get primaryDark => copyWith(color: Palette.colorSecondary);

  TextStyle get primaryLight => withColor(Palette.colorPrimaryDim);

  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle withSize(double size) => copyWith(fontSize: size);
}
