import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/data/models/all_exercise_response.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';
import 'package:modarb_app/features/workout/ui/widgets/equipment_tab.dart';
import 'package:modarb_app/features/workout/ui/widgets/instructions_tab.dart';
import 'package:modarb_app/features/workout/ui/widgets/target_muscle_tab.dart';

class ExerciseInDetails extends StatelessWidget{
  final int index;
  final List<Data>? model;
  const ExerciseInDetails({Key? key,required this.index, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController;
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state){
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80.h,
              title: Text(
                '${model?[index].name}',
                // '${listOfExercise?[index!].name}',
                style: TextStyles.font19White700,
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/MusclesWorked.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric (horizontal: 10.w, vertical: 20.h),
                    child: Container(
                        width: double.infinity,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: ColorsManager.lighterGray,
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '    Exercise ${index+1} / ${model?.length}',
                              style: TextStyles.font16White700,
                            ),
                            model?[index].sets != null ? Text(
                              '       ${model?[index].sets} sets * ${model?[index].reps} reps ',
                              style: TextStyles.font12White600,
                            ) :Text(
                              '     ${model?[index].duration} min ',
                              style: TextStyles.font12White600,
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: ColorsManager.lighterGray,
                      ),
                      child: TabBar(
                        dividerHeight: 0,
                        controller: tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: ColorsManager.mainPurple,
                        ),
                        tabs: const [
                          Tab(
                            text: 'Target muscle',
                          ),
                          Tab(
                            text: 'Instructions',
                          ),
                          Tab(
                            text: 'Equipment',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height ,
                    child: TabBarView(
                      controller: tabController,
                      children:  [
                        TargetTab(
                          index: index, model: model!,

                        ),
                        InstructionsTab(
                          index: index, model: model!,
                        ),
                        EquipmentTab(
                          index: index, model: model!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


