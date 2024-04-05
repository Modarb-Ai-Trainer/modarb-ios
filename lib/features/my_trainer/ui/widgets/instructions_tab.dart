import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class InstructionsTab extends StatelessWidget{
  const InstructionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 15.h),
          child: Column(
            children: [
              Container(
                height: 340.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorsManager.lighterGray,
                  borderRadius: BorderRadius.all(Radius.circular(16.r),),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'instructions',
                        style: TextStyles.font16White700,
                      ),
                      verticalSpace(15),
                      Text(
                        'Grasp the handles with a full grip, your thumb circled around the handle.Maintain a neutral wrist position with your wrists in line with your forearms.Exhale and push outward until your arms are fully extended (don\'t lock the elbows).Keep your head steady against the back support during this movement and your neck still. You should feel resistance against the horizontal push.Pause briefly at full extension.Bend your elbows and return to the starting position, breathing in during this recovery.',
                        style: TextStyles.font13White700.copyWith(height: 1.7),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(15),
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorsManager.lighterGray,
                  borderRadius: BorderRadius.all(Radius.circular(16.r),),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Benefits ',
                        style: TextStyles.font16White700,
                      ),
                      verticalSpace(15),
                      Text(
                        'The Chest Press targets the pectoral muscles, the primary muscles of the chest, while also engaging the biceps, shoulders, and back muscles for a comprehensive upper body workout',
                        style: TextStyles.font13White700.copyWith(height: 1.7),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
