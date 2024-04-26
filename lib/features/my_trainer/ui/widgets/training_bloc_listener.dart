import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_button.dart';

class TrainingBlocListener extends StatelessWidget{
  const TrainingBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<TrainerCubit>();

    return BlocListener<TrainerCubit, TrainerState>(

      listenWhen: (previous, current) => current is ClosingTraining ,
      listener: (context, state) {
        state.whenOrNull(
          closingTraining: () {
            showDialog(
              context: context,
              barrierColor: ColorsManager.lighterWhite,
              builder: (context) => whenTabClosed(context),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }


  Widget whenTabClosed(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.h),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextButton(
          buttonText: 'Resume',
          onPressed: (){
          },
        ),
        verticalSpace(20),
        AppTextButton(
          buttonText: 'restart exercise',
          backgroundColor: ColorsManager.lightWhite,
          textColor: ColorsManager.mainPurple,
          onPressed: () {},
        ),
        verticalSpace(20),
        AppTextButton(
          buttonText: 'Quit',
          backgroundColor: Colors.transparent,
          textColor: ColorsManager.mainPurple,
          onPressed: () {
            context.pop();

          },


        ),
      ],
    ),
  );


}
