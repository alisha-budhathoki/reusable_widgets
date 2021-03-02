
import 'package:flutter/material.dart';

abstract class PlatformWidget extends StatelessWidget {
  PlatformWidget({Key key}) : super(key: key);
  Widget buildCupertinoWidget(BuildContext context);
  Widget buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final _platform = Theme.of(context).platform;
    return _platform == TargetPlatform.iOS
        ? buildCupertinoWidget(context)
        : buildMaterialWidget(context);
  }
}
