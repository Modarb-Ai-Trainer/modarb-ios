import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class RowOfIntakedAndBurned extends StatelessWidget{
  const RowOfIntakedAndBurned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state){
        final cubit = context.read<NutritionCubit>();

        final num intaked = (cubit.todayIntakeResponse?.data?.caloriesGoal ?? 0) -
            (cubit.todayIntakeResponse?.data?.caloriesLeft ?? 0);
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150.w,
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: ColorsManager.darkGray,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'intaked',
                      style: TextStyles.font13White700,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 30.w,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: SliderTheme(
                              data: const SliderThemeData(
                                trackHeight: 6,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 10.0, // Set the size of the slider overlay
                                ),

                              ),
                              child: Slider(
                                value: intaked.toDouble(),
                                onChanged:(value){},
                                min: 0,
                                max: cubit.todayIntakeResponse?.data?.caloriesGoal?.toDouble() ?? 0,
                                activeColor: ColorsManager.mainPurple,

                              ),
                            ),
                          ),
                        ),
                         Text('$intaked\n Kcal'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 150.w,
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: ColorsManager.darkGray,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Burned',
                      style: TextStyles.font13White700,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 30.w,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: SliderTheme(
                              data: const SliderThemeData(
                                trackHeight: 6,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 10.0, // Set the size of the slider overlay
                                ),

                              ),
                              child: Slider(
                                value: cubit.todayIntakeResponse?.data?.caloriesBurned?.toDouble() ?? 0.0,
                                onChanged:(value){},
                                min: 0,
                                max: cubit.todayIntakeResponse?.data?.caloriesGoal?.toDouble() ?? 0.0,
                                activeColor: ColorsManager.mainPurple,

                              ),
                            ),
                          ),
                        ),
                        Text('${cubit.todayIntakeResponse?.data?.caloriesBurned}\n Kcal')
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
