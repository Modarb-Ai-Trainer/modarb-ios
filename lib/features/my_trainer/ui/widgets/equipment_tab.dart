import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
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
            height: 100.h,
            decoration: const BoxDecoration(
              color: ColorsManager.lighterGray,
              borderRadius: BorderRadius.all(Radius.circular(16.0),),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                        'assets/images/Muscles1.png',
                      scale: 1,
                      ),
                  ),
                  horizontalSpace(20),
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
