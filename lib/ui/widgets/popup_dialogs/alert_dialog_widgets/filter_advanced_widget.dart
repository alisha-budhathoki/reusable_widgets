import 'package:class_room/ui/styles/color_palette.dart';
import 'package:class_room/ui/styles/text_styles.dart';
import 'package:class_room/ui/widgets/common/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:class_room/ui/styles/style_extension.dart';

import 'filters_widgets.dart';

class FilterAdvancedWidget extends StatelessWidget {
  String dropdownValue = "All"; //This is the selection value. It is also present in my array.
  final dropdownContents = ["All", "Deep Learning Course", "Python Data Science", "Artificial Intelligence", "Algorithms and Data Structure", "Foundation of Data Science"];//This is the array for dropdown
  final checboxContents1 = ["Not Submitted", "Over Due", "Completed"];
  final checboxContents2 = ["Graded", "Ungraded", "General Assignement", "Online Assignment"];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft,child: Text('Filters',style: TextStyles.headline3.semibold,)),
          Container(height: 170,child: FilterWidget(checboxContents1),alignment: Alignment.centerLeft,),
          SizedBox(height: 20,),
          Align(alignment: Alignment.centerLeft,child: Text('Course', style: TextStyles.headline3.semibold)),
          DropdownWidget(),
          SizedBox(height: 20,),
          Align(alignment: Alignment.centerLeft,child: Text('Assignment Types', style: TextStyles.headline3.semibold,)),
          Container(height: 230,child: FilterWidget(checboxContents2), alignment: Alignment.centerLeft,),
        ],
      ),
    );
  }
}
