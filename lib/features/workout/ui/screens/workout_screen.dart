import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/workout/ui/widgets/exercise_library_tab.dart';
import 'package:modarb_app/features/workout/ui/widgets/workout_programs_tab.dart';

class WorkoutScreen extends StatelessWidget{
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController ;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.h,
          title: Text(
            'Workouts',
            style: TextStyles.font19White700,),
          automaticallyImplyLeading: false,
          bottom:TabBar(
            controller: tabController,
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsManager.mainPurple,
            ),
            tabs: [
              Tab(
                child: Center(
                  child: Text(
                    'Exercise library',
                    style: TextStyles.font13White700,
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    'Workout programs',
                    style: TextStyles.font13White700,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            ExerciseLibraryTab(),
            WorkoutProgramsTab(),
          ],
        ),
      ),
    );
  }
}
