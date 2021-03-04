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
            child: Column(children: [
          GlobalTextField(
            hintText: "John Doe",
            label: "FULL NAME",
            hintColor:Palette.darkTextColor,
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            key: Key("buy_subject_input"),
            autofocus: true,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 22, height: 2.0),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 2.0),
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              fillColor: Colors.white,
              filled: true,
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          )
        ])));
  }
}
