import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class DownloadFilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            color: Colors.yellow,
            onPressed: () async {
              var status = await Permission.storage.status;
              if (status.isUndetermined) {
                // We didn't ask for permission
                print('snjsnd');
                status = await Permission.storage.request();
              }

              if (status.isDenied) {
                print('sjns');
                status = await Permission.storage.request();
              }

              if (status.isPermanentlyDenied) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  backgroundColor: Palette.errorRed,
                  content: Text(
                      'Please setup Permission from App Permission Settings'),
                ));
              }
              if (status.isGranted) {
                print('shsbsh');
                // _pickDirectory(context);
              }
            },
            child: Text(
              'Click here to download',
              style: TextStyles.caption.withColor(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
