import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_container.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/equipment_tab.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/target_muscle_tab.dart';
import 'instructions_tab.dart';

class ExerciseDetails extends StatelessWidget{
  const ExerciseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController;
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state){
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 80.h,
              title: Text(
                'chest press',
                style: TextStyles.font19White700,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: (){
                      context.pushNamed(Routes.beforeWarming);
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
                              '    Exercise 1 / 6',
                              style: TextStyles.font16White700,
                            ),
                            Text(
                              '    4 sets x 12-15 reps',
                              style: TextStyles.font13White700,
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
                      children: const [
                        TargetMuscleTab(),
                        InstructionsTab(),
                        EquipmentTab(),
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


