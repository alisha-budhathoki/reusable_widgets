import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension DialogHelper on Widget {
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      useSafeArea: true,
      // useRootNavigator: false,
      // barrierDismissible: barrierDismissible,
      builder: (_) => this,
    );
  }

  void openBottomDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      useRootNavigator: false,
      isScrollControlled: true,
      builder: (_) =>this,
      // useRootNavigator: false,
      // barrierDismissible: barrierDismissible,
    );
  }
}
