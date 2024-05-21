import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/theming/styles.dart';
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
                      fontSize: 26.sp,
                    ),
                  ),
                  endChild: buildItemOfMealDiet(context),
                ),
                childCount: 5,
            ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemOfMealDiet(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'BreakFast',
                  style: TextStyles.font13White700,),
                  Text(
                    '250 kcal',
                  style: TextStyles.font13White400,),
                ],
              ),
              verticalSpace(20),
              Row(
                children: [
                  Image.asset('assets/images/food.png'),
                  horizontalSpace(20),
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
                  horizontalSpace(20),

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
