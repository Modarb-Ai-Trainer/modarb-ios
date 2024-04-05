import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class EquipmentTab extends StatelessWidget{
  const EquipmentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 15.h),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ColorsManager.lighterGray,
              borderRadius: BorderRadius.all(Radius.circular(16.0),),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Muscles Worked',
                    style: TextStyles.font16White700,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
