import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/home/ui/widgets/circle_progress_of_kcal.dart';

class DailyIntake extends StatelessWidget{
  const DailyIntake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Macro Tracker: Your Daily Intake',
          style: TextStyles.font19White700,
        ),
        verticalSpace(20),
        Stack(
          children: [
            Container(
              height: 270.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: ColorsManager.lightGray,
              ),

            ),
            Positioned(
              top: 80.h,
              left: 15.w,
              child: Row(
                children: [
                  Text(
                      '331 \nleft ',
                    style: TextStyles.font16White700,
                  ),
                  horizontalSpace(60),
                  Text(
                      '       1769\nof 2100 kcal',
                    style: TextStyles.font16White700,),
                  horizontalSpace(60),
                  Text(
                      '267 \nburned ',
                    style: TextStyles.font16White700,
                  ),
                ],
              ),
            ),
             const Row(
              children: [
              ],
            ),

          ],
        ),
      ],
    );
  }
}
