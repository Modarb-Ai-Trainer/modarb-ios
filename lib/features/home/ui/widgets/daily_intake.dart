import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/build_slider_with_text.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class DailyIntake extends StatelessWidget{
  const DailyIntake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
    builder: (context,state) {
      final cubit = context.read<NutritionCubit>();
      final double progressValue = (cubit.todayIntakeResponse?.data?.caloriesBurned ?? 0) /
          (cubit.todayIntakeResponse?.data?.caloriesGoal ?? 1);
      final num remaining = (cubit.todayIntakeResponse?.data?.caloriesGoal ?? 0) -
          (cubit.todayIntakeResponse?.data?.caloriesBurned ?? 0);
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Macro Tracker: Your Daily Intake',
              style: TextStyles.font19White700,
            ),
            verticalSpace(20),
            Stack(
              children: [
                Container(
                  height: 270.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: ColorsManager.lightGray,
                  ),

                ),
                Positioned(
                  top: 15.h,
                  left: 20.w,
                  child: Row(
                    children: [
                      Text(
                        '${cubit.todayIntakeResponse?.data?.caloriesLeft} \nleft ',
                        style: TextStyles.font16White700,
                      ),
                      horizontalSpace(30),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 120.w,
                            height: 120.h,
                            child: CircularProgressIndicator(
                              value: progressValue.toDouble(),
                              valueColor: const AlwaysStoppedAnimation<Color>(ColorsManager.mainWhite),
                              color: ColorsManager.mainWhite,
                              strokeWidth: 5,
                            ),
                          ),
                          CircleAvatar(
                            radius: 55.r,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: ColorsManager.mainPurple,
                                  shape: BoxShape.circle
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Remaining',
                                style: TextStyles.font13White700,
                              ),
                              Text(
                                '$remaining',
                                style: TextStyles.font16White700,
                              ),
                              Text(
                                'Kcal',
                                style: TextStyles.font13White700,
                              ),
                            ],
                          ),
                        ],
                      ),
                      horizontalSpace(30),
                      Text(
                        '${cubit.todayIntakeResponse?.data?.caloriesBurned} \nburned ',
                        style: TextStyles.font16White700,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30.h,
                  left: 8.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildSliderWithText(
                        value: cubit.todayIntakeResponse?.data?.carbsConsumed?.toDouble() ?? 0.0,
                        all: cubit.todayIntakeResponse?.data?.carbsGoal?.toDouble() ?? 0.0,
                        onChanged: (value) {},
                        labelText: 'Carbs',
                      ),
                      BuildSliderWithText(
                        value: cubit.todayIntakeResponse?.data?.proteinConsumed?.toDouble() ?? 0.0,
                        all: cubit.todayIntakeResponse?.data?.proteinGoal?.toDouble() ?? 0.0,
                        onChanged: (value) {},
                        labelText: 'Protein ',
                      ),
                      BuildSliderWithText(
                        value: cubit.todayIntakeResponse?.data?.fatConsumed?.toDouble() ?? 0.0,
                        all: cubit.todayIntakeResponse?.data?.fatGoal?.toDouble() ?? 0.0,
                        onChanged: (value) {},
                        labelText: 'Fats',
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      );
    }
    );
  }

}
