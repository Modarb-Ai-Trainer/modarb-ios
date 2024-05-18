import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        final weeks = cubit.weekModel ?? [];
        final days = cubit.dayModel ?? [];

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OverViewWidget(),
              const ImageOfPlanWidget(),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 10),
                child: Text(
                    'Block 1 : Your personalized plan',
                    style: TextStyles.font16White700),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index) => BuildWeekOfPlan(listOfWeek: weeks, listOfDay:days ,index: index,),
                itemCount: weeks.length,
              ),
            ],
          ),
        );
      },
    );
  }




}

