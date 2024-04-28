import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class SmartTrainerAfterCompleteWorkout extends StatelessWidget{
  const SmartTrainerAfterCompleteWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state){
        return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/images/trainer.png',
                        scale: .8,
                      ),
                      verticalSpace(25),
                      itemOfMessage(
                        text: 'Congratulations! 👏You did it! Workout complete!',
                      ),
                      verticalSpace(20),
                      itemOfMessage(
                        text: 'You \'ve earned 15 points for completing today\'s workout! Great job! 🎉 ',
                      ),
                      verticalSpace(20),
                      itemOfMessage(
                        text: 'you\'re only 50 points away from claiming your next reward 🏆',
                      ),
                      verticalSpace(30),
                      AppTextButton(
                          buttonText: 'Finish',
                          onPressed: (){
                            context.pushReplacementNamed(Routes.workoutInsights);
                          }
                      ),
                    ],
                  ),
                ),
              ),
            )
        );
      },
    );
  }

  Widget itemOfMessage({required String text}) => Container(
    decoration: BoxDecoration(
      color: ColorsManager.lightPurple,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        bottomLeft: Radius.circular(20.r),
        bottomRight: Radius.circular(20.r),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.0),
      child: Text(
        text,
        style: TextStyles.font16White700.copyWith(
          height: 1.15,
        ),
        textAlign: TextAlign.start,

      ),
    ),
  );
}
