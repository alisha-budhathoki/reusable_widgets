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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 160,
              child: Card(
                  elevation: 5,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.image,
                        size: 30,
                      ),
                      Container(
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Upload jpg, jpeg, png files only",
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 160,
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
                        Icons.copy,
                        size: 30,
                      ),
                      Container(
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Upload pdf, ppt, pptx, doc, Xls, xlsx, ipynb, txt files only",
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ],
                  )),
            ),
          )
        ],
      )
    );
  }
}
