import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/equipment_tab.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/target_muscle_tab.dart';
import 'instructions_tab.dart';

class ExerciseDetails extends StatelessWidget{
  final int index;
  final List<Exercise> listOfExercise;
  const ExerciseDetails({Key? key, required this.index, required this.listOfExercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController;
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state){
        final cubit = context.read<TrainerCubit>();
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80.h,
              title: Text(
                '${listOfExercise[index].name}',
                style: TextStyles.font19White700,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: (){
                      context.pushNamed(Routes.beforeWarming);
                      cubit.startTimerOfBeforeWarming();
                      Future.delayed(
                          const Duration(seconds: 15),() {
                        context.pushNamed(Routes.warmScreen);
                      });
                    },
                    child: AppTextContainer(
                      text: 'Start',
                      textStyle: TextStyles.font16White700,
                      width: 90.w,
                      height: 30.h,
                    ),
                  ),
                ),
              ],
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
                              '    Exercise ${index+1} / ${listOfExercise.length}',
                              style: TextStyles.font16White700,
                            ),
                            listOfExercise[index].sets != null ? Text(
                              '       ${listOfExercise[index].sets} sets * ${listOfExercise[index].reps} reps ',
                              style: TextStyles.font12White600,
                            ) :Text(
                              '     ${listOfExercise[index].duration} min ',
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
                        TargetMuscleTab(
                          index: index, listOfExercise: listOfExercise,

                        ),
                        InstructionsTab(
                          index: index, listOfExercise: listOfExercise,
                        ),
                        EquipmentTab(
                          index: index, listOfExercise: listOfExercise,
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


