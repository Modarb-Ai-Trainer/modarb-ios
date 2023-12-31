import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class Board2 extends StatelessWidget{
  const Board2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: ColorsManager.darkGray,
              child: Image.asset(
                'assets/images/onBoarding2.png',
                scale: 3.5,
              ),
            ),
            Positioned(
              top: 410.h,
              child: Column(
                children: [
                  Text(
                    'Real-Time Guidance and\n Progress Tracking',
                    textAlign: TextAlign.center,
                    style: TextStyles.font23White700.copyWith(
                      height: 1.5,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    'Experience real-time guidance during workouts and \ntrack your progress effortlessly. Our app provides \n insights, charts, and motivation to keep you on the \n path to a healthier lifestyle.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13White400.copyWith(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

