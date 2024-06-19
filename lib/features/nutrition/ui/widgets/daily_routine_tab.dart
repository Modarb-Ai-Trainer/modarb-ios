import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/row_of_intaked_and_burned.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/today_intake.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/track_meal.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';

class DailyRoutineTab extends StatelessWidget{
  const DailyRoutineTab({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state){
        final cubit = context.read<NutritionCubit>();

        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
            child: CustomScrollView(
              slivers:[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const TodayIntake(),
                      const RowOfIntakedAndBurned(),
                      Text(
                        'Track meals',
                        style: TextStyles.font19White700,
                      ),

                    ],
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => ItemOfTrackMeal(
                          imageAssets: cubit.imageAssets,
                          index: index,
                          nameOfMeals: cubit.nameOfMeals,
                        ),
                    childCount: 4,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    child: Text(
                      'Today’s diet',
                      style: TextStyles.font19White700,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context,index) => TimelineTile(
                    axis: TimelineAxis.vertical,
                    alignment: TimelineAlign.start,
                    beforeLineStyle: const LineStyle(
                      color: ColorsManager.lightPurple,
                      thickness: 3,
                    ),
                    indicatorStyle: IndicatorStyle(
                      color: Colors.transparent,
                      drawGap: true,
                      padding: const EdgeInsets.all(5),
                      iconStyle: IconStyle(
                        color: ColorsManager.lightPurple,
                        iconData: Icons.circle,
                        fontSize: 22.sp,
                      ),
                    ),
                    endChild: buildItemOfMealDiet(context,cubit,index),
                  ),
                    childCount: 4,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildItemOfMealDiet(BuildContext context, cubit,index) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Progress Indicator'),
             content: Column(
               children: [
                 Text('Progress Indicator'),
                 Text('Progress Indicator')
               ],
             ),
            );
          },
        );
      },
      child: SizedBox(
        width: double.infinity,
        height: 150.h,
        child: Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cubit.nameOfMeals[index],
                style: TextStyles.font16White700,
              ),
              verticalSpace(5),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Image.asset(
                        'assets/images/lunch_meal_2.png',
                        scale: 1,
                    
                      ),
                    ),
                  ),
                  horizontalSpace(20),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Glazed duck fillet',
                          style: TextStyles.font13White700,
                          overflow: TextOverflow.ellipsis,
                          ),
                        Text('20 g',
                            style: TextStyles.font13White400
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
