import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/build_meal_of_diet.dart';
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
                  // const TrackMeal(),
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
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) => const ItemOfTrackMeal(),
                    childCount: 4,
              ),
            ),

            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //         (BuildContext context, int index) {
            //       return const BuildMealOfDiet();
            //     },
            //     childCount: 5,
            //   ),
            // )

            SliverList(delegate: SliverChildListDelegate(
              [
                TimelineTile(
                  axis: TimelineAxis.vertical,
                  alignment: TimelineAlign.start,
                  isFirst: true,
                  beforeLineStyle: const LineStyle(
                    color: ColorsManager.lightPurple,
                    thickness: 3,
                  ),
                  indicatorStyle: IndicatorStyle(
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(5),
                    iconStyle: IconStyle(
                      color: ColorsManager.lightPurple,
                      iconData: Icons.circle,
                      fontSize: 26.sp,
                    ),
                  ),
                  startChild: buildItemOfMeal(context),

                ),
                TimelineTile(
                  axis: TimelineAxis.vertical,
                  alignment: TimelineAlign.start,
                  isFirst: true,
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
                      fontSize: 26.sp,
                    ),
                  ),
                  startChild: buildItemOfMeal(context),

                ),

              ]
            ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemOfMeal(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed('');
      },
      child: SizedBox(
        width: double.infinity,
        height: 180.h,
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/food.png'),
                  Column(
                    children: [
                      Text('Glazed duck fillet',
                        style: TextStyles.font13White700
                        ,),
                      Text('20 g',
                          style: TextStyles.font13White400
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(10),
              Row(
                children: [
                  Image.asset('assets/images/food.png'),
                  Column(
                    children: [
                      Text('Glazed duck fillet',
                        style: TextStyles.font13White700
                        ,),
                      Text('20 g',
                          style: TextStyles.font13White400
                      ),
                    ],
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
