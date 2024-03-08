import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';

class TodayWorkout extends StatelessWidget{
  const TodayWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Crush Today’s Workout',
          style: TextStyles.font19White700,
        ),
        verticalSpace(20),
        Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Image.asset('assets/images/plans.png',
            fit: BoxFit.fill,

          ),
        ),
      ],
    );
  }
}
