import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class ExerciseStart extends StatelessWidget{
  final int index;
  final List<Exercise>? listOfExercise;

  const ExerciseStart({Key? key, required this.index, this.listOfExercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state) {
        final cubit = context.read<TrainerCubit>();
        final exercise = listOfExercise?[index];

        if (listOfExercise?[index].duration != null && cubit.counter ==0 ) {
          cubit.startTimerOfExercise(listOfExercise![index].duration!);
        }

        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                '${listOfExercise?[index].coverImage}',
                fit: BoxFit.fill,
              ),
            ),
            verticalSpace(30),
            Text(
              '${listOfExercise?[index].name}',
              style: TextStyles.font19White700,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            verticalSpace(20),


            listOfExercise?[index].duration != 0 ?  Text(
              '00:${state is CounterChangeOfExercise ? state.exerciseTime.toString().padLeft(2, '0') : 0}',
              style: TextStyles.font19White700,
            ) :  Text(
              // '${listOfExercise?[index].reps} reps',
              ' ${listOfExercise?[index].sets} sets * ${listOfExercise?[index].reps} reps ',
              style: TextStyles.font19White700.copyWith(
                color: ColorsManager.lightPurple,
              ),
            ),

          ],
        );
      },
    );
  }
}
