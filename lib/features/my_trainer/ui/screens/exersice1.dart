import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/smart_trainer/ui/screens/smart_trainer_after_warm.dart';

class Exercise1 extends StatelessWidget{
  const Exercise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrainerCubit,TrainerState>(
      listener: (context,state){
        if(state is WarmingFinished){
          showDialog(
              context: context,
              builder:(context) => const SmartTrainerAfterWarm(),
          );

        }
      },
      builder: (context,state){
        final cubit = context.read<TrainerCubit>();
        return Column(
          children: [
            Image.asset('assets/images/warming.png',
              scale: .8,
            ),
            Text(
              'Jumping Jacks',
              style: TextStyles.font19White700,
            ),
            verticalSpace(20),
            Text(
              '${cubit.newCounterOfWarming}',
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
