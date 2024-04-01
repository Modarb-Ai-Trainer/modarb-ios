import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/listview_of_workout.dart';

class ListOfExercises extends StatelessWidget{
  const ListOfExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:10.w, vertical: 10.h ),
      child: Container(
        constraints: const BoxConstraints(),
        decoration: BoxDecoration(
          color: ColorsManager.lighterGray,
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(15),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Day 1 / 4 -Full-body',
                style: TextStyles.font19White700,
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercises\n        6',
                    style: TextStyles.font13White700,
                  ),
                  Text(
                    'sets\n  20',
                    style: TextStyles.font13White700,
                  ),
                  Text(
                    'Duration\n40-50 min',
                    style: TextStyles.font13White700,
                  ),
                ],
              ),
            ),
            verticalSpace(10),
            const Expanded(
                child: ListViewOfWorkout()
            ),
            verticalSpace(15),
            Align(
              alignment: Alignment.center,
              child: AppTextButton(
                  buttonText: 'Start',
                  buttonWidth: 180.w,
                  onPressed: () {}
              ),
            ),
            verticalSpace(15),


          ],
        ),
      ),
    );
  }
}
