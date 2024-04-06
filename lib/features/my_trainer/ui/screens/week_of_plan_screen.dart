import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/list_of_exercises.dart';

class WeekOfPlanScreen extends StatelessWidget{
  const WeekOfPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  top: 80.h,
                  right: 20.w,
                    left: 20.w,

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const AppVerticalDivider(),
                        horizontalSpace(10),
                        Text(
                          'Week 1 : Foundation',
                          style: TextStyles.font16White700,
                        ),
                      ],
                    ),
                    verticalSpace(10),
                    Flexible(
                      child: Text(
                        'Start easy in the first week to let your body get used to the workout. It sets the baseline for your progress in the weeks ahead.',
                        style: TextStyles.font13White600,
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: ColorsManager.lightPurple,
                          child: Text(
                            'D1',
                            style: TextStyles.font16White700,
                          ),
                        ),
                        horizontalSpace(5),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: ColorsManager.lightPurple,
                          child: Text(
                            'D1',
                            style: TextStyles.font16White700,
                          ),
                        ),
                        horizontalSpace(5),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: ColorsManager.lightPurple,
                          child: Text(
                            'D1',
                            style: TextStyles.font16White700,
                          ),
                        ),
                        horizontalSpace(5),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: ColorsManager.lightPurple,
                          child: Text(
                            'D1',
                            style: TextStyles.font16White700,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverFillRemaining(
            child: ListOfExercises(),
          ),
        ],
      ),
    );
  }
}
