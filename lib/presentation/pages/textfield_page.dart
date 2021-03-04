import 'package:class_room/presentation/pages/create_post_textfield.dart';
import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/widgets/common/global_text_field.dart';
import 'package:flutter/material.dart';

class TextfieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Textfields"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlobalTextField(
                    hintText: "John Doe",
                    label: "FULL NAME",
                    hintColor: Palette.darkTextColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    hintText: "johndoe@gmail.com",
                    label: "Email",
                    hintColor: Palette.darkTextColor,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    hintText: "MOBILE NUMBER",
                    hintColor: Palette.hintLightGrey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isBorder: true,
                    hintText: "write a comment ...",
                    hintColor: Palette.hintLightGrey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GlobalTextField(
                    isBorder: true,
                    hintText: "search assignment",
                    hintColor: Palette.hintLightGrey,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatePostTextField()));
                    },
                    child: Text("goto"),
                  )
                ]),
          ),
        )));
  }
}
