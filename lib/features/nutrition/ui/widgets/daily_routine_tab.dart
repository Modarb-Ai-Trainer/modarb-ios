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
        if(cubit.todayMealResponse ==null){
          cubit.getTodayMeal();
        }
        final model = cubit.todayMealResponse?.data;

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
                if(state is TodayMealLoading)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator()
                    ),
                  ),
                if(state is TodayMealSuccess)
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
                      padding: const EdgeInsets.all(3),
                      iconStyle: IconStyle(
                        color: ColorsManager.lightPurple,
                        iconData: Icons.circle,
                        fontSize: 22.sp,
                      ),
                    ),
                    endChild: buildItemOfMealDiet(context,cubit,model,index),
                  ),
                    childCount: 4,
                  ),
                ),
                if(state is TodayMealLoading)
                  SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        'No data here to show',
                        style: TextStyles.font19White700,
                      ),
                    ),
                  ),

              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildItemOfMealDiet(BuildContext context, cubit, model ,int index) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(

              title: Text(' Name : ${model.days[0].meals[index].name}',
                style: TextStyles.font16White700,
              ),
             content: SizedBox(
               height: 100,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'Calories : ${model.days[0].meals[index].calories}',
                     style: TextStyles.font16White700,
                   ),
                   Text('Carbs : ${model.days[0].meals[index].carbs}',
                     style: TextStyles.font16White700,),
                   Text('Proteins : ${model.days[0].meals[index].proteins}',
                     style: TextStyles.font16White700,),
                   Text('Fats : ${model.days[0].meals[index].fats}',
                     style: TextStyles.font16White700,),
                 ],
               ),
             ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close',
                    style: TextStyles.font16White700,),
                ),
              ],
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
              verticalSpace(7),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 90.h,
                      width: 90.w,
                      child: Image.network(
                        '${model.days[0].meals[index].image}',
                        scale: 1,
                    
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '${model.days[0].meals[index].name}',
                          style: TextStyles.font13White700,
                          overflow: TextOverflow.fade,
                          ),
                        Text('${model.days[0].meals[index].calories} g',
                            style: TextStyles.font13White700
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
