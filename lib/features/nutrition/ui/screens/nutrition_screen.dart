import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/daily_routine_tab.dart';
import '../widgets/plans_tab.dart';

class NutritionScreen extends StatelessWidget{
  const NutritionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController ;
    return  DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70.h,
            automaticallyImplyLeading: false,
            title: Text(
              'NutriGuide',
            style: TextStyles.font19White700,),
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
                  child: Text(
                    'Daily Routine',
                    style: TextStyles.font13White700,
                  ),
                ),
                Tab(
                  child: Text(
                    'Plans',
                    style: TextStyles.font13White700,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              DailyRoutineTab(),
              PlansTab(),
            ],
          ),
        ),
      ),
    );
  }
}
