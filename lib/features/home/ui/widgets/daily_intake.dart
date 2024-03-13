import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/home/ui/widgets/semi_circular_of_kcal.dart';

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
              top: 15.h,
              left: 10.w,
              child: Row(
                children: [
                  Text(
                      '331 \nleft ',
                    style: TextStyles.font16White700,
                  ),
                  horizontalSpace(20),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const SemiCircularOfKcal(),
                      Text(
                        '       1769\nof 2100 kcal',
                        style: TextStyles.font16White700,),
                    ],
                  ),
                  horizontalSpace(15),
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
