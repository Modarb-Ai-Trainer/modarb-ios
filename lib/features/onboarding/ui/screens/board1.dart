import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class Board1 extends StatelessWidget{
  const Board1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: ColorsManager.darkGray,
            child: Image.asset(
              'assets/images/onBoarding1.png',
              scale: 3.5,
            ),
          ),
          Positioned(
            top: 410.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Column(
                children: [
                  Text(
                    'Tailored Workouts and \n Nutrition Plans',
                    textAlign: TextAlign.center,
                    style: TextStyles.font23White700.copyWith(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'Get ready for workouts and nutrition plans tailored\n just for you. Tell us your goals, preferences, and \n fitness level, and let our AI create a customized \n roadmap to success',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13White400.copyWith(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
