import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/custom_workout_tab.dart';
import 'package:modarb_app/features/my_trainer/ui/screens/my_plan_tab.dart';

class TrainerScreen extends StatefulWidget {
  const TrainerScreen({Key? key}) : super(key: key);

  @override
  State<TrainerScreen> createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 180.h,
              toolbarHeight: 130.h,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(
                    top: 30.h,
                    right: 15.h,
                    left: 15.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppVerticalDivider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Your smart trainer',
                            style: TextStyles.font23White700,
                          ),
                          Text(
                            'Dynamic workouts, personalized\n advice, and constant evolution\n with your progress',
                            style: TextStyles.font13White700,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/trainer.png',
                        scale: 1.40,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                  controller: _tabController,
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
                        'My plan',
                        style: TextStyles.font13White700,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Custom workout',
                        style: TextStyles.font13White700,
                      ),
                ),
                  ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  MyPlanTab(),
                  CustomWorkoutTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
