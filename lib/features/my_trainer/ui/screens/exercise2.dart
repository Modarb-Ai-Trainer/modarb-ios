import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class Exercise2 extends StatelessWidget{
  final int index;
  final List<Exercise>? listOfExercise;

  const Exercise2({Key? key, required this.index, this.listOfExercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var setController = PageController();

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
            verticalSpace(10),
            Text(
              '${listOfExercise?[index].name}',
              // 'Chest press',
              style: TextStyles.font19White700,
            ),
            verticalSpace(40),
            if(listOfExercise?[index].duration != null)
               Text(
                   '${cubit.newCounterOfExercise}',
                 style: TextStyles.font16White700,
               ),
            if( listOfExercise?[index].reps != null)
              Text(
                '${listOfExercise?[index].reps} reps',
                style: TextStyles.font28White700.copyWith(
                  color: ColorsManager.lightPurple,
                ),
              ),
            verticalSpace(20),
            SizedBox(
              height: 50.h,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: setController,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text(
                      'set ${index + 1} / 4',
                      style: TextStyles.font13White700,
                    ),
                  );
                },

              ),
            ),
          ],
        );
      },
    );
  }
}
