import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class AppTextContainer extends StatelessWidget{

  final Color? textColor;
  final TextStyle? textStyle;

  final String text;
  final Color? backgroundColor;
  final double? width;
  final double? height;

  const AppTextContainer({Key? key, this.textColor, required this.text, this.backgroundColor, this.width, this.height, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 25.h,
      width: width ?? 70.w,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorsManager.mainPurple,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Text(
          text,
          style: (textStyle ?? TextStyles.font13White600).copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
