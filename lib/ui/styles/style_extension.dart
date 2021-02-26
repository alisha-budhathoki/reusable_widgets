import 'package:flutter/cupertino.dart';

import 'color_pallette.dart';

extension TextStyleExtension on TextStyle{
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get semibold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);

  TextStyle get primary => copyWith(color: Palette.colorPrimary);
  TextStyle get primaryDark => copyWith(color: Palette.colorSecondary);
  TextStyle get primaryLight => withColor(Palette.colorPrimaryDim);

  // TextStyle get light => copyWith(color: Palette.);
  // TextStyle get lightFaded => copyWith(color: AppColors.lightFaded);
  // TextStyle get lightAccent => copyWith(color: AppColors.lightAccent);

  // TextStyle get dark => copyWith(color: AppColors.dark);
  // TextStyle get darkFaded => copyWith(color: AppColors.darkFaded);
  // TextStyle get darkAccent => copyWith(color: AppColors.darkAccent);

  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withSize(double size) => copyWith(fontSize: size);
}