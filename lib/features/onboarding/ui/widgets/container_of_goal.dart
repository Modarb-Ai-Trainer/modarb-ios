import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model_with_body.dart';

class ContainerOfGoal extends StatelessWidget{
  const ContainerOfGoal({Key? key, required this.isSelected, required this.onSelect, required this.model}) : super(key: key);

  final ItemModelWithBody model;
  final bool isSelected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Container(
        margin:  EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.mainPurple : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:ColorsManager.mainPurple,
          width: 1.5,
          ),
        ),
        child: Column(
          children: [
            Text(
              model.title,
              style: TextStyles.font19White700,
              textAlign: TextAlign.center,
            ),
            verticalSpace(5),
            Text(
                model.body,
              style: TextStyles.font13White400,
              textAlign: TextAlign.center,

            ),

          ],
        ),
      ),
    );
  }
}
