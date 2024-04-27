import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class SmartTrainerAfterWarm extends StatelessWidget{
  const SmartTrainerAfterWarm({Key? key}) : super(key: key);

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
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: ColorsManager.mainPurple,
                        child: SvgPicture.asset('assets/images/bot.svg'),
                      ),
                      verticalSpace(25),
                       itemOfMessage(
                         text: 'Great job! Warm-up complete. Get ready for the main workout!',
                       ),
                      verticalSpace(20),
                       itemOfMessage(
                        text: 'Your smart personal trainer is ready to guide you with real-time corrections for perfect form',
                      ),
                      verticalSpace(20),
                       itemOfMessage(
                        text: ' Tap on my icon for guidance whenever you need it',
                      ),
                      verticalSpace(30),
                      AppTextButton(
                          buttonText: 'Continue',
                          onPressed: (){
                            context.pop();
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
