import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class Board3 extends StatelessWidget{
  const Board3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: ColorsManager.darkGray,
              child: Image.asset(
                'assets/images/onBoarding3.png',
                scale: 4,
              ),
            ),
            verticalSpace(30),
            Column(
              children: [
                Text(
                  'Welcome to your fitness \n revolution',
                  textAlign: TextAlign.center,
                  style: TextStyles.font23White700.copyWith(
                    height: 1.5,
                  ),
                ),
                verticalSpace(10),
                Text(
                  'Meet your new workout companion – your smart\n personal trainer. Ready to guide you every step of\n the way. Let\'s make every workout count!',
                  textAlign: TextAlign.center,
                  style: TextStyles.font13White400.copyWith(
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
