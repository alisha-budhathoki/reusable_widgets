import 'package:flutter/material.dart';

class FeedbackFirstDialog extends StatelessWidget {
  List<String> textContents = [
    "Upload jpg, jpeg, png files only",
    "Upload pdf, ppt, pptx, doc, Xls, xlsx, ipynb, txt files only"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GridView.builder(
        itemCount: textContents.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 5.0 / 5.0,
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                  elevation: 5,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.image,
                        size: 50,
                      ),
                      Container(
                        width: 130,
                          child: Text(
                        textContents[index],
                        textAlign: TextAlign.center,
                      ))
                    ],
                  )));
        },
      ),
    );
  }
}
