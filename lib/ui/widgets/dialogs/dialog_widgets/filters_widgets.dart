import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> _items = [
    "Not Submitted",
    "Over Due",
    "Completed",
  ];

  List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_items.length, false);
    //It creates a list of the given length(first parameter) and fill initial value(second parameter) all list.
  }
//todo: content adjustment with the title of dialog
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Container(
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(_items[index]),
              value: _isChecked[index],
              onChanged: (val) {
                setState(
                      () {
                    _isChecked[index] = val;
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
