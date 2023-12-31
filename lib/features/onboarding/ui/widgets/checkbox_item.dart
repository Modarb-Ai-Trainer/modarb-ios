import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/checkbox_Item_Model.dart';

class CheckboxItem extends StatelessWidget{
  final CheckboxItemModel item;
  final ValueChanged<bool?> onChanged;

  const CheckboxItem({super.key, required this.item, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: item.isChecked ? ColorsManager.mainPurple : Colors.transparent,
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
        value: item.isChecked,
        onChanged: onChanged,
      ),
    );
  }
}