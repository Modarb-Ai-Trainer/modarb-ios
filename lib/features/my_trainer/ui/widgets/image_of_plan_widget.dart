import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class ImageOfPlanWidget extends StatelessWidget{
  const ImageOfPlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context, state) {
        final cubit = context.read<TrainerCubit>();
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h,vertical: 20.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Image.asset('assets/images/plans.png',
                  fit: BoxFit.fill,

                ),
              ),
              Positioned(
                top: 10.h,
                child: Column(
                  children: [
                    Text(
                      'Today’s workout',
                      style: TextStyles.font16White700,
                    ),
                    verticalSpace(10),
                    Text(
                      '${cubit.workoutResponse?.data?.workout?.name}',
                      style: TextStyles.font13White700,
                    ),
                    verticalSpace(15),
                    AppTextContainer(
                      text: '${cubit.workoutResponse?.data?.workout?.minPerDay} min',
                    ),
                    verticalSpace(15),
                    AppTextContainer(
                      text: '2 exercise',
                      width: 90.w,
                      height: 25.h,
                    ),
                    verticalSpace(15),
                    AppTextButton(
                      buttonText: 'Start Workout',
                      buttonWidth: 160.w,
                      buttonHeight: 25.h,
                      backgroundColor: ColorsManager.mainPurple,
                      textColor: ColorsManager.mainWhite,
                      textStyle: TextStyles.font16White700,
                      onPressed: (){

                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
