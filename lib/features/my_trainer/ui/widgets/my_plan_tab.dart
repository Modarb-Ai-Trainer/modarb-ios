import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/build_week_of_plan.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/image_of_plan_widget.dart';
import 'package:modarb_app/features/my_trainer/ui/widgets/overview_widget.dart';

class MyPlanTab extends StatelessWidget {
  const MyPlanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (context,index) => const BuildWeekOfPlan(),
            itemCount: 5,
          ),
        ],
      ),
    );
  }




}

