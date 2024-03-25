import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';

class OverViewWidget extends StatelessWidget{
  const OverViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Image.asset('assets/images/Group 48.png',
                  fit: BoxFit.fill,

                ),
              ),
              Positioned(
                left: 25.h,
                top: 30.h,
                child: Row(
                  children: [
                    const AppVerticalDivider(),
                    horizontalSpace(7),
                    Text(
                      'Overview',
                      style: TextStyles.font19White700,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 25.h,
                top: 70.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fitness level : Intermediate',
                      style: TextStyles.font13White700,
                    ),
                    verticalSpace(10),
                    Text(
                      'Goal : Gain muscle',
                      style: TextStyles.font13White700,
                    ),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Row(
            children: [
              const AppVerticalDivider(),
              horizontalSpace(7),
              Text(
                'Block 1: Establishing the Foundation',
                style: TextStyles.font16White700,
              ),

            ],
          ),
          verticalSpace(10),
          Text(
              'Your first phase spans 6 weeks, focusing on building a solid foundation. Through diverse and targeted workouts, you\'ll enhance strength, improve endurance, and set the stage for sustainable muscle growth. The completion of each week unlocks new levels, preparing you for the next stage.',
            style: TextStyles.font13White400.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
