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
        if(listOfExercise?[index].duration != null){
          cubit.counterOfExercise == listOfExercise?[index].duration;
          cubit.startTimerOfExercise();
        }
        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/MusclesWorked.png',
                fit: BoxFit.fill,
              ),
            ),
            verticalSpace(30),
            Text(
              '${listOfExercise?[index].name}',
              style: TextStyles.font19White700,
            ),
            verticalSpace(30),
            if(listOfExercise?[index].duration != null)
               Text(
                   ' 00 : ${cubit.newCounterOfExercise}',
                 style: TextStyles.font19White700,
               ),
            if( listOfExercise?[index].reps != null)
              Text(
                '${listOfExercise?[index].reps} reps',
                style: TextStyles.font28White700.copyWith(
                  color: ColorsManager.lightPurple,
                ),
              ),

          ],
        );
      },
    );
  }
}
