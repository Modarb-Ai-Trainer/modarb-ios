import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/data/models/day_model.dart';
import 'package:modarb_app/features/my_trainer/data/models/week_model.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/list_of_exercises.dart';

class WeekOfPlanScreen extends StatelessWidget{
  final int index;
  final List<Week> listOfWeek;
  final List<Day> listOfDay;
  const WeekOfPlanScreen({Key? key, required this.index, required this.listOfWeek, required this.listOfDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250.h,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: EdgeInsets.only(
                      top: 80.h,
                      right: 20.w,
                      left: 20.w,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const AppVerticalDivider(),
                            horizontalSpace(10),
                            Text(
                              'Week ${index + 1} : ${listOfWeek[index].weekName}',
                              style: TextStyles.font16White700,
                            ),
                          ],
                        ),
                        verticalSpace(10),
                        Flexible(
                          child: Text(
                            '${listOfWeek[index].weekDescription}',
                            style: TextStyles.font13White600,
                            softWrap: true,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        verticalSpace(20),
                        Row(
                          children: [
                            SizedBox(
                              height: 30.h,
                              width: 200.w,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder:(context,index) => buildItemOfDay(listOfDay,index),
                                itemCount: listOfDay.length,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: ListOfExercises(listOfDay: listOfDay,index: index,),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget buildItemOfDay(listOfDay,index) => Padding(
    padding: const EdgeInsets.all(2.0),
    child: CircleAvatar(
      radius: 15.r,
      backgroundColor: ColorsManager.lightPurple,
      child: Text(
        'D${listOfDay[index].dayNumber}',
        style: TextStyles.font16White700,
      ),
    ),
  );

}
