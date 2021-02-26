import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension DialogHelper on Widget{
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      useSafeArea: true,
      // useRootNavigator: false,
      // barrierDismissible: barrierDismissible,
      builder: (_) => this,
    );
  }}