import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/styles.dart';
import '../theming/colors.dart';

class WelcomeAndImage extends StatelessWidget{
  const WelcomeAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorsManager.darkGray,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding:EdgeInsets.only(top: 50.h),
            child: Image.asset(
              'assets/images/Group 481845.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: 155.h,
            child: Text(
              'Welcome To',
              style: TextStyles.font28White700,
            ),
          ),
          Positioned(
            top: 185.h,
            child: Text(
              'Modarb',
              style: TextStyles.font60White900,
            ),
          ),
        ],
      ),
    );
  }
}
