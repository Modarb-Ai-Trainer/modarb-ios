import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';

import '../../../../core/theming/styles.dart';

class WorkoutProgramEnroll extends StatelessWidget{
  final int index ;
  const WorkoutProgramEnroll({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state){
        var cubit = context.read<WorkoutCubit>();
        return Scaffold(
          appBar: AppBar(),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 30.h),
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
                                    'Fitness level : ${cubit.workoutProgramResponse?.data[index].fitnessLevel}',
                                    style: TextStyles.font13White700,
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Goal : ${cubit.workoutProgramResponse?.data[index].fitnessGoal}',
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
                            Text(
                              '${cubit.workoutProgramResponse?.data[index].name}',
                              style: TextStyles.font16White700,
                            ),

                          ],
                        ),
                        verticalSpace(10),
                        Text(
                          '${cubit.workoutProgramResponse?.data[index].description}',
                          style: TextStyles.font13White400.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
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
                              '${cubit.workoutProgramResponse?.data[index].place.join('&')}',
                              style: TextStyles.font13White700,
                            ),
                            horizontalSpace(40),

                            SvgPicture.asset('assets/icons/train.svg'),
                            horizontalSpace(10),
                            Text(
                              '${cubit.workoutProgramResponse?.data[index].type}',
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
                              '${cubit.workoutProgramResponse?.data[index].minPerDay} min / day',
                              style: TextStyles.font13White700,
                            ),
                            horizontalSpace(40),
                            SvgPicture.asset('assets/icons/date .svg'),
                            horizontalSpace(10),
                            Text(
                              '${cubit.workoutProgramResponse?.data[index].totalNumberDays} day',
                              style: TextStyles.font13White700,
                            ),

                          ],
                        ),
                        verticalSpace(35),
                        AppTextButton(
                            buttonText: 'Enroll',
                            onPressed: (){
                              cubit.enrollPrograms('${cubit.workoutProgramResponse?.data[index].id}');
                              if(cubit.workoutProgramResponse?.data != null){
                                context.pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Enroll successfully',
                                      style: TextStyles.font16White700,
                                    ),
                                    backgroundColor: ColorsManager.lighterGray,
                                    duration: const Duration(seconds: 3),
                                  ),
                                );
                              }
                            },
                        ),

                      ],
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
