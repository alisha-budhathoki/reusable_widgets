import 'package:class_room/ui/widgets/common/global_text_field.dart';
import 'package:flutter/material.dart';

class CreatePostTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Multiline textfield with transparent borders'),
            GlobalTextField(
                hintText: "Update Something ...",
                isLarge: true,
                isBorder: true,
                isBorderTransparent: true)
          ],
        ),
      ),
    );
  }
}
