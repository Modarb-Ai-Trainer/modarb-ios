import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:modarb_app/features/nutrition/ui/widgets/row_of_intaked_and_burned.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/today_intake.dart';

class DailyRoutineTab extends StatelessWidget{
  const DailyRoutineTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TodayIntake(),
            RowOfIntakedAndBurned(),
          ],
        ),
      ),
    );
  }

}
