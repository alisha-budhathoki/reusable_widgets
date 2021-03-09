import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class GlobalTextField extends StatelessWidget {
  final String label;
  final bool isLarge;
  final bool isBorder;
  final bool showField;
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final Widget middleChild;
  final String initialValue;
  final TextStyle labelStyle;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final Color hintColor;
  final bool isBorderTransparent;
  final bool isChangeLabelColor;


  const GlobalTextField({
    this.label,
    this.validator,
    this.onChanged,
    this.isBorder,
    this.initialValue,
    this.icon,
    @required this.hintText,
    this.labelStyle,
    this.controller,
    this.middleChild,
    this.inputFormatters,
    this.isLarge = false,
    this.showField = true,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hintColor,
    this.isBorderTransparent,
    this.isChangeLabelColor
  })  : assert(hintText != null),
        assert(isLarge != null),
        assert(showField != null),
        assert(obscureText != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(context),
        if (middleChild != null) middleChild,
        _buildField(context),
      ],
    );
  }

  Widget _buildLabel(BuildContext context) {
    return label == null
        ? Container()
        : Text(
            label,
            style: labelStyle ??
                TextStyles.headline6
                    .withColor(isChangeLabelColor?Palette.dialogTextColor:Colors.red)
                    .semibold,
          );
  }

  Widget _buildField(BuildContext context) {
    final int maxLines = obscureText ? 1 : null;
    final int minLines = maxLines ?? (isLarge ? 4 : 1);

    return Container(
      child: TextFormField(
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        validator: validator,
        onChanged: onChanged,
        initialValue: initialValue,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: isBorderTransparent == true
            ? TextStyles.headline4
            : TextStyles.bodyText1.normal,
        inputFormatters: inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 32.0,
            minWidth: 32.0,
          ),
          focusedBorder: isBorder == true
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide:
                      BorderSide(color: Palette.veryLightGrey, width: 1.0),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette.dialogTextColor),
                ),
          enabledBorder: isBorder == true
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(
                      color: isBorderTransparent == true
                          ? Colors.transparent
                          : Palette.veryLightGrey,
                      width: 1.0),
                )
              : UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: isBorderTransparent == true
                          ? Colors.transparent
                          : Palette.veryLightGrey),
                ),
          prefixIcon: icon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Icon(icon, size: 20.0),
                ),
        ),
      ),
    );
  }
}
