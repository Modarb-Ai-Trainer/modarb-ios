import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/listview_of_workout.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout_response_model.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';

import '../../logic/trainer_states.dart';

class ListOfExercises extends StatelessWidget{
  final int index;
  final List<Day> listOfDay;

  const ListOfExercises({Key? key, required this.listOfDay, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (BuildContext context, state) {
        final cubit = context.read<TrainerCubit>();
        final int totalMin = cubit.getTotalMinDuration(listOfDay);
        final int totalMax = cubit.getTotalMaxDuration(listOfDay);
        return  Padding(
          padding: EdgeInsets.symmetric(horizontal:10.w, vertical: 10.h ),
          child: Container(
            constraints: const BoxConstraints(),
            decoration: BoxDecoration(
              color: ColorsManager.lighterGray,
              borderRadius: BorderRadius.all(
                Radius.circular(20.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(15),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Day ${listOfDay[index].dayNumber} / ${listOfDay.length} - ${listOfDay[index].dayType}',
                    style: TextStyles.font19White700,
                  ),
                ),
                verticalSpace(20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises\n        ${listOfDay[index].totalNumberExercises}',
                        style: TextStyles.font13White700,
                      ),
                      listOfDay[index].exercises[index].sets != null ? Text(
                        ' sets\n ${ listOfDay[index].exercises[index].sets} ',
                        style: TextStyles.font13White700,
                      ) :Text(
                        'sets \n   0',
                        style:TextStyles.font13White700,
                      ),
                      Text(
                        'Duration Range\n  $totalMin -$totalMax min',
                        style: TextStyles.font13White700,
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                Expanded(
                    child: ListViewOfWorkout(
                      index: index,
                      listOfExercise: listOfDay[index].exercises,
                      listOfDay: listOfDay ,

                    )
                ),
                verticalSpace(15),
                Align(
                  alignment: Alignment.center,
                  child: AppTextButton(
                      buttonText: 'Start',
                      buttonWidth: 180.w,
                      onPressed: () {
                        context.pushNamed(
                            Routes.exerciseDetails,
                            arguments:{
                              'index': index,
                              'listOfExercise': listOfDay[index].exercises ,
                              'listOfDay' :listOfDay,
                            }
                        );
                      }
                  ),
                ),
                verticalSpace(15),
              ],
            ),
          ),
        );
      },
    );
  }
}
