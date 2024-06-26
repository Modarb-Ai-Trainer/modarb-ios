import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TargetMuscleTab extends StatelessWidget{
  final int index;
  final List<Exercise> listOfExercise;
  const TargetMuscleTab({Key? key, required this.index, required this.listOfExercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (BuildContext context, state) {
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 15.h),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: ColorsManager.lighterGray,
                  borderRadius: BorderRadius.all(Radius.circular(16.0),),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muscles Worked',
                        style: TextStyles.font16White700,
                      ),
                      verticalSpace(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'primary',
                                style: TextStyles.font16White700,
                              ),
                              verticalSpace(10),
                              AppTextContainer(
                                text: '${listOfExercise[index].targetMuscles?.primary?.name}',
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'secondary',
                                style: TextStyles.font16White700,
                              ),
                              verticalSpace(10),
                              AppTextContainer(
                                text: '${listOfExercise[index].targetMuscles?.secondary?.name}',
                                width: 100.w,
                              ),
                            ],
                          ),


                        ],
                      ),
                      verticalSpace(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/chest.png'),
                          Image.asset('assets/images/shoulder.png'),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
}
}
