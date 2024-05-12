import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/build_slider_with_text.dart';
import '../../../../core/theming/colors.dart';

class TodayIntake extends StatelessWidget{
  const TodayIntake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today’s intake',
          style: TextStyles.font19White700,
        ),
        verticalSpace(20),
        Stack(
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 30,
              top:45,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 120.w,
                    height: 120.h,
                    child: const CircularProgressIndicator(
                      value: 80,
                      valueColor: AlwaysStoppedAnimation<Color>(ColorsManager.mainWhite),
                      strokeWidth: 5,
                    ),
                  ),
                  CircleAvatar(
                    radius: 55,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: ColorsManager.mainPurple,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Remaining',
                        style: TextStyles.font13White700,
                      ),
                      Text(
                        '1.112',
                        style: TextStyles.font16White700,
                      ),
                      Text(
                        'Kcal',
                        style: TextStyles.font13White700,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 8.w,
              child: Column(
                children: [
                  BuildSliderWithText(
                    value: 50,
                    onChanged: (value) {},
                    labelText: 'Carbs',
                  ),
                  BuildSliderWithText(
                    value: 50,
                    onChanged: (value) {},
                    labelText: 'Protein ',
                  ),
                  BuildSliderWithText(
                    value: 50,
                    onChanged: (value) {},
                    labelText: 'Fats',
                  ),

                ],
              ),
            ),


          ],
        ),
      ],
    );
  }


}
