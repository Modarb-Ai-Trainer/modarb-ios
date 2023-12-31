import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_Model.dart';

class ItemOfList extends StatelessWidget{
   const ItemOfList({Key? key, required this.model, required this.isSelected, required this.onSelectionChanged, }) : super(key: key);

  final ItemModel model;
  final bool isSelected;
   final ValueChanged<bool> onSelectionChanged;


   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        onSelectionChanged(!isSelected);

      },
      child: Container(
        margin:  EdgeInsets.symmetric(vertical: 6.h),
        padding:  EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
        decoration: BoxDecoration(
          color:  isSelected? ColorsManager.mainPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color:ColorsManager.mainPurple,
            width: 1.5,
          ),
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(
            model.title,
            style: TextStyles.font19White700,
          ),


        ),
      ),
    );
  }
}
