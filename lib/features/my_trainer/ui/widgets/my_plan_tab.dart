import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/build_week_of_plan.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/image_of_plan_widget.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/overview_widget.dart';

class MyPlanTab extends StatelessWidget {
  const MyPlanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state) {
        final cubit = context.read<TrainerCubit>();
        if(cubit.workoutResponse?.data?.weeks != null) {
          return CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: OverViewWidget()),
            const SliverToBoxAdapter(child: ImageOfPlanWidget()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
                child: Text(
                  'Block 1: Your personalized plan',
                  style: TextStyles.font16White700,
                ),
              ),
            ),
            if(cubit.workoutResponse?.data?.weeks != null)
              SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => BuildWeekOfPlan(
                      index: index,
                ),
                childCount: cubit.workoutResponse?.data?.weeks.length,
              ),
            ),
            if(cubit.workoutResponse?.data?.weeks == null)
              const Center(child: CircularProgressIndicator()),
          ],
        );
        }else{
          cubit.getWorkoutData();
          return const Center(child: CircularProgressIndicator());
        }
      },
    );

  }




}

