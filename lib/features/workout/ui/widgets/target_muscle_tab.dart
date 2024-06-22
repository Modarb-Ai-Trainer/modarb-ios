import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class TargetTab extends StatelessWidget{
  final int index;
  final List<Data>? model;
  const TargetTab({Key? key, required this.index, this.model,}) : super(key: key);

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
                decoration: BoxDecoration(
                  color: ColorsManager.lighterGray,
                  borderRadius: BorderRadius.all(Radius.circular(16.r),),
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
                                text: '${model?[index].targetMuscles?.primary?.name}',
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
                                text: '${model?[index].targetMuscles?.secondary?.name}',
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
