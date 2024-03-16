import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class TodayWorkout extends StatelessWidget{
  const TodayWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Crush Today’s Workout',
            style: TextStyles.font19White700,
          ),
          verticalSpace(20),
          Stack(
            children: [
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Image.asset('assets/images/plans.png',
                  fit: BoxFit.fill,

                ),
              ),
              Positioned(
                left: 10.h,
                top: 50.h,
                child: Text(
                  'Full Body',
                  style: TextStyles.font19White700,
                ),
              ),
              Positioned(
                right: 10.h,
                top: 80.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.mainPurple,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          '30 min',
                          style: TextStyles.font13White600,
                        ),
                      ),
                    ),
                    horizontalSpace(30),
                    Container(
                      height: 25.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.mainPurple,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          '6 exercise ',
                          style: TextStyles.font13White600,
                        ),
                      ),
                    ),
                    horizontalSpace(80),
                    Stack(
                       alignment: Alignment.center,
                       children: [
                          SizedBox(
                           width: 40.w,
                           height: 40.h,
                           child: const CircularProgressIndicator(
                             value: 70,
                             valueColor: AlwaysStoppedAnimation<Color>(ColorsManager.mainPurple),
                             strokeWidth: 5,
                           ),
                         ),
                         Text(
                           '70 %',
                           style: TextStyles.font12White600,
                         ),
                       ],
                     ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5.h,
                right: 80.w,
                child: AppTextButton(
                  buttonText: 'continue',
                  buttonWidth: 140.w,
                  buttonHeight: 30.h,
                  backgroundColor: ColorsManager.lighterWhite,
                  textColor: ColorsManager.mainPurple,
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
