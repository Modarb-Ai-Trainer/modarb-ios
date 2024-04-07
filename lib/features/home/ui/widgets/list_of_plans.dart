import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';

class ListOfPlans extends StatelessWidget {



  const ListOfPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SizedBox(
        height: 200.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Plans',
              style: TextStyles.font19White700,
            ),
            verticalSpace(20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  itemOfPlan(
                    'Workout plan',
                    'assets/images/plans.png',
                  ),
                  itemOfPlan(
                    'Nutrition plan',
                    'assets/images/nutrition.png',
                  ),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemOfPlan(String text,String pathOfImage) => Padding(
    padding: EdgeInsets.only(right: 14.w),
    child: Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 150.h,
          width: 250.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            pathOfImage,
            fit: BoxFit.cover,),
        ),
        Text(
          text,
          style: TextStyles.font16White700,
        ),
      ],
    ),
  );
}
