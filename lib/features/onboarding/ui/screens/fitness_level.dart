import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_model_with_body.dart';
import '../widgets/container_of_goal.dart';

class FitnessLevel extends StatefulWidget{
  const FitnessLevel({Key? key}) : super(key: key);

  @override
  State<FitnessLevel> createState() => _FitnessLevelState();
}

class _FitnessLevelState extends State<FitnessLevel> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Text(
              'What’s Your Fitness level ?',
              textAlign: TextAlign.center,
              style: TextStyles.font28White700,
            ),
            verticalSpace(30),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) => ContainerOfGoal(
                model: levelItems[index],
                isSelected: index == selectedIndex,
                onSelect: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              itemCount: levelItems.length,
              shrinkWrap: true,
            ),

          ],
        ),
      ),
    );
  }

}
