import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = "All";
  final dropdownContents = [
    "All",
    "Deep Learning Course",
    "Python Data Science",
    "Artificial Intelligence",
    "Algorithms and Data Structure",
    "Foundation of Data Science"
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        icon: Icon(
          Icons.arrow_drop_down_sharp,
          size: 20.09,
        ),
        isExpanded: true,
        items: dropdownContents
            .map((String item) =>
                DropdownMenuItem<String>(child: Text(item), value: item))
            .toList(),
        value: dropdownValue,
        onChanged: (String value) {
          setState(() {
            print("previous ${this.dropdownValue}");
            print("selected $value");
            this.dropdownValue = value;
          });
        });
  }
}
