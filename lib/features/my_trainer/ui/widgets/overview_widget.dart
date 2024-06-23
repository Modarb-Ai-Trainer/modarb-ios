import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class OverViewWidget extends StatelessWidget{
  const OverViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context, state) {
        final cubit = context.read<TrainerCubit>();

        return Padding(
          padding: EdgeInsets.all(15.h),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 180.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Image.asset('assets/images/Group 48.png',
                      fit: BoxFit.fill,

                    ),
                  ),
                  Positioned(
                    left: 25.h,
                    top: 30.h,
                    child: Row(
                      children: [
                        const AppVerticalDivider(),
                        horizontalSpace(7),
                        Text(
                          'Overview',
                          style: TextStyles.font19White700,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 25.h,
                    top: 70.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fitness level : ${cubit.workoutResponse?.data?.workout?.fitnessLevel}',
                          style: TextStyles.font13White700,
                        ),
                        verticalSpace(10),
                        Text(
                          'Goal : ${cubit.workoutResponse?.data?.workout?.fitnessGoal}',
                          style: TextStyles.font13White700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              Row(
                children: [
                  const AppVerticalDivider(),
                  horizontalSpace(7),
                  Expanded(
                    child: Text(
                      '${cubit.workoutResponse?.data?.workout?.name}',
                      style: TextStyles.font16White700,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),

                ],
              ),
              verticalSpace(10),
              Text(
                '${cubit.workoutResponse?.data?.workout?.description}',
                style: TextStyles.font13White400.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              verticalSpace(35),
              Row(
                children: [
                  const AppVerticalDivider(),
                  horizontalSpace(7),
                  Text(
                    'About the plan',
                    style: TextStyles.font16White700,
                  ),

                ],
              ),
              verticalSpace(25),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/location.svg'),
                  horizontalSpace(10),
                  Text(
                    '${cubit.workoutResponse?.data?.workout?.place.join('&')}',
                    style: TextStyles.font13White700,
                  ),
                  horizontalSpace(40),

                  SvgPicture.asset('assets/icons/train.svg'),
                  horizontalSpace(10),
                  Text(
                    '${cubit.workoutResponse?.data?.workout?.type}',
                    style: TextStyles.font13White700,
                  ),
                ],
              ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/time.svg'),
                  horizontalSpace(10),
                  Text(
                    '${cubit.workoutResponse?.data?.workout?.minPerDay} min / day',
                    style: TextStyles.font13White700,
                  ),
                  horizontalSpace(40),
                  SvgPicture.asset('assets/icons/date .svg'),
                  horizontalSpace(10),
                  Text(
                    '${cubit.workoutResponse?.data?.workout?.totalNumberDays} day',
                    style: TextStyles.font13White700,
                  ),

                ],
              ),

            ],
          ),
        );
      },
    );
  }
}
