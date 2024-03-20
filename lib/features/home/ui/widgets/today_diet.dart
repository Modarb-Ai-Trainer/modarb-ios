import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class TodayDiet extends StatelessWidget{
  const TodayDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today’s diet',
            style: TextStyles.font19White700,
          ),
          verticalSpace(20),
          Stack(
            children: [
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Image.asset(
                  'assets/images/Group 481854.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 80.h,
                left: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3 meals ',
                      style: TextStyles.font16White700,
                    ),
                    horizontalSpace(30),
                    Text(
                        '1 snack',
                      style: TextStyles.font16White700,
                    ),
                    horizontalSpace(50),
                    Container(
                      height: 25.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.mainPurple,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          '2150 Kcal',
                          style: TextStyles.font13White600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15.h,
                right: 100.w,
                child: AppTextButton(
                  buttonText: 'view',
                  buttonWidth: 120.w,
                  buttonHeight: 35.h,
                  colorOfSide: ColorsManager.mainPurple,
                  backgroundColor: Colors.transparent,
                  textColor: ColorsManager.mainPurple,
                  onPressed: (){
                    context.pushNamed(Routes.nutritionScreen);

                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
