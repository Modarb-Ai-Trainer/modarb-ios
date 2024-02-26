import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/checkbox_Item_Model.dart';

class CheckboxItem extends StatelessWidget{
  final CheckboxItemModel item;
  final ValueChanged<bool?> onChanged;
  final bool isSelected;

  const CheckboxItem({Key? key, required this.item, required this.onChanged, required this.isSelected}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 8.h),
      padding:  EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.h),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.mainPurple : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color:ColorsManager.mainPurple,
          width: 1.5,
        ),
      ),
      child: CheckboxListTile(
        checkColor: Colors.white,
        activeColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(
          item.title,
          style: TextStyles.font19White700,
        ),
        value: isSelected,
        onChanged: onChanged,
      ),
    );
  }
}