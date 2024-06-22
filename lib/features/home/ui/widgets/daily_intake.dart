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
      final double progressValue = (cubit.todayIntakeResponse?.data?.caloriesBurned?.toInt() ?? 0) /
          (cubit.todayIntakeResponse?.data?.caloriesGoal?.toInt() ?? 1);
      final num remaining = (cubit.todayIntakeResponse?.data?.caloriesGoal?.toInt() ?? 0) -
          (cubit.todayIntakeResponse?.data?.caloriesBurned?.toInt() ?? 0);

      double carbsConsumed = cubit.todayIntakeResponse?.data?.carbsConsumed?.toDouble() ?? 0.0;
      double carbsGoal = cubit.todayIntakeResponse?.data?.carbsGoal?.toDouble() ?? 0.0;

      double proteinConsumed = cubit.todayIntakeResponse?.data?.proteinConsumed?.toDouble() ?? 0.0;
      double proteinGoal = cubit.todayIntakeResponse?.data?.proteinGoal?.toDouble() ?? 0.0;

      double fatConsumed = cubit.todayIntakeResponse?.data?.fatConsumed?.toDouble() ?? 0.0;
      double fatGoal = cubit.todayIntakeResponse?.data?.fatGoal?.toDouble() ?? 0.0;


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
                        '${cubit.todayIntakeResponse?.data?.caloriesLeft?.toInt()} \nleft ',
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
                                '${cubit.todayIntakeResponse?.data?.caloriesIntake?.toInt() ?? 0.0}',
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
                        '${cubit.todayIntakeResponse?.data?.caloriesBurned?.toInt()} \nburned ',
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
                        value:  carbsConsumed > carbsGoal ? carbsGoal : carbsConsumed,
                        all:  carbsGoal,
                        onChanged: (value) {},
                        labelText: 'Carbs',
                      ),
                      BuildSliderWithText(
                        value:  proteinConsumed > proteinGoal ? proteinGoal : proteinConsumed,
                        all: proteinGoal,
                        onChanged: (value) {},
                        labelText: 'Protein ',
                      ),
                      BuildSliderWithText(
                        value: fatConsumed > fatGoal ? fatGoal : fatConsumed,
                        all: fatGoal ,
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
