import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';

class AppVerticalDivider extends StatelessWidget{
  const AppVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.mainPurple,
      height: 25.h,
      width: 5.w,
    );
  }
}
