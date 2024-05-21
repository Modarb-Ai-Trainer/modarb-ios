import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

import '../../../../core/helper/spacing.dart';

class SheetOfDetailsOfMeal extends StatelessWidget{
  const SheetOfDetailsOfMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorsManager.darkGray,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add meal',
                style: TextStyles.font13White700,
              ),
              IconButton(
                onPressed: (){
                  context.pop();
                },
                icon: const Icon(Icons.close),
              ),

            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text(
              'Breakfast',
              style: TextStyles.font16White700,
            ),
          ),
          verticalSpace(10),


        ],
      ),
    );
  }
}
