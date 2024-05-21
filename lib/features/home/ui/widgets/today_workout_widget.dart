import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TodayWorkoutWidget extends StatelessWidget{

  const TodayWorkoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (BuildContext context, state) {
        // final cubit = context.read<TrainerCubit>();
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
                        const AppTextContainer(
                          text: '30 min',
                        ),
                        horizontalSpace(30),
                        AppTextContainer(
                          text: '6 exercise',
                          width: 90.w,
                          height: 25.h,
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
                      onPressed: (){
                        context.pushNamed(
                            Routes.todayWorkoutScreen,

                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
