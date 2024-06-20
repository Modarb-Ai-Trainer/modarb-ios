import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';

import '../theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? colorOfSide;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    this.textStyle,
    required this.buttonText,
    required this.onPressed,
    this.textColor,
    this.colorOfSide,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),

        ),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: colorOfSide ??  Colors.transparent,
            width: 3.0,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? ColorsManager.mainPurple,
        ),
        fixedSize: MaterialStateProperty.all(
          Size( buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 40.h),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: (textStyle ?? TextStyles.font19White700).copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}