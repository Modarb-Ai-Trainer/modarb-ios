import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';


class TodayWorkoutScreen extends StatelessWidget {


  const TodayWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (BuildContext context, state) {
        final cubit = context.read<TrainerCubit>();
        // final listOfExercise = cubit.dayModel.exercises;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300.h,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/images/workout.png',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 80.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Day 1',
                              style: TextStyles.font28White700,
                            ),
                            Text(
                              'Full-body workout',
                              style: TextStyles.font23White700,
                            ),
                            verticalSpace(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Exercises\n        6',
                                  style: TextStyles.font13White700,
                                ),
                                Text(
                                  'sets\n  20',
                                  style: TextStyles.font13White700,
                                ),
                                Text(
                                  'Duration\n40-50 min',
                                  style: TextStyles.font13White700,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30.h,
                        right: 80.w,
                        child: AppTextButton(
                          buttonText: 'Start Workout',
                          buttonWidth: 180.w,
                          buttonHeight: 40.h,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SliverFillRemaining(
              //   child: ListViewOfWorkout(
              //     index: index, listOfExercise:listOfDay[index].exercises,
              //
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
