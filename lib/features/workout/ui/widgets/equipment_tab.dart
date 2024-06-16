import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';

class EquipmentTab extends StatelessWidget{
  final int index;
  final List<Data>? model;
  const EquipmentTab({Key? key, required this.index, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (BuildContext context,state) {
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 15.h),
              child: Container(
                width: double.infinity,
                height: 100.h,
                decoration: const BoxDecoration(
                  color: ColorsManager.lighterGray,
                  borderRadius: BorderRadius.all(Radius.circular(16.0),),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.asset(
                          'assets/images/Muscles1.png',
                          // '${listOfExercise[index].equipments[index].image}',
                          scale: 1,
                        ),
                      ),
                      horizontalSpace(20),
                      Text(
                        '${model?[index].equipments[index].name}',
                        style: TextStyles.font16White700,
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
