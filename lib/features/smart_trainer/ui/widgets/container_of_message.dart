import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ContainerOfMessage extends StatelessWidget{
  const ContainerOfMessage({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.0),
        child: Text(
          text,
          style: TextStyles.font16White700.copyWith(
            height: 1.15,
          ),
          textAlign: TextAlign.start,

        ),
      ),
    );
  }
}
