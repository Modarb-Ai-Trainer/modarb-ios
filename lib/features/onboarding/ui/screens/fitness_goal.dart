import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model_with_body.dart';
import '../widgets/container_of_goal.dart';

class FitnessGoal extends StatefulWidget{
  const FitnessGoal({Key? key}) : super(key: key);

  @override
  State<FitnessGoal> createState() => _FitnessGoalState();
}

class _FitnessGoalState extends State<FitnessGoal> {
  int selectedIndex = -1;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Text(
                'What’s Your Fitness goal ?',
              textAlign: TextAlign.center,
              style: TextStyles.font28White700,
            ),
            verticalSpace(30),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) => ContainerOfGoal(
                model: goalItems[index],
                isSelected: index == selectedIndex,
                onSelect: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              itemCount: goalItems.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }

}
