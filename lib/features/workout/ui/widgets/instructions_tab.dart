import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class InstructionsTab extends StatelessWidget{
  final int index;
  final List<Data>? model;
  const InstructionsTab({Key? key, required this.index, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context, state) {
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicHeight(
                    child: Container(
                      // height: 340.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorsManager.lighterGray,
                        borderRadius: BorderRadius.all(Radius.circular(16.r),),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'instructions',
                              style: TextStyles.font16White700,
                            ),
                            verticalSpace(15),
                            Text(
                              '${model?[index].instructions}',
                              style: TextStyles.font13White700.copyWith(height: 1.7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(15),
                  IntrinsicHeight(
                    child: Container(
                      // height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorsManager.lighterGray,
                        borderRadius: BorderRadius.all(Radius.circular(16.r),),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Benefits ',
                              style: TextStyles.font16White700,
                            ),
                            verticalSpace(15),
                            Text(
                              '${model?[index].benefits}',
                              style: TextStyles.font13White700.copyWith(height: 1.7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },

    );
  }
}
