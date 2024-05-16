import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/row_of_intaked_and_burned.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/today_intake.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/track_meal.dart';

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

          ],
        ),
      ),
    );
  }

}
