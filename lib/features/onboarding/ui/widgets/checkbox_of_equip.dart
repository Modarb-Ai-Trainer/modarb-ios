import 'package:flutter/material.dart';
import '../../data/models/checkbox_Item_Model.dart';
import 'checkbox_item.dart';

class CheckboxList extends StatefulWidget {
  const CheckboxList({super.key});

  @override
  CheckboxListState createState() => CheckboxListState();
}

class CheckboxListState extends State<CheckboxList> {



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: checkboxItems.map((item) => CheckboxItem(
        item: item,
        onChanged: (value) {
          setState(() {
            item.isChecked = value!;
          });
        },
      ))
          .toList(),
    );
  }
}












