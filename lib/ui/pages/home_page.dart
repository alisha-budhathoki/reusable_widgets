import 'package:class_room/ui/styles/color_pallette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Palette.neutralGrey,
            child: Text(
              'Text with a background color',
              style: TextStyles.headline1.withColor(Palette.white).thin,
              // style: Theme.of(context).textTheme.headline1,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.neutralGrey,
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
