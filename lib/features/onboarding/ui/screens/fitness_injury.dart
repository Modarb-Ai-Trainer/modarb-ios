import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import '../../data/models/item_Model.dart';
import '../widgets/item_of_list.dart';

class FitnessInjury extends StatefulWidget{
  const FitnessInjury({Key? key}) : super(key: key);

  @override
  State<FitnessInjury> createState() => _FitnessInjuryState();
}

class _FitnessInjuryState extends State<FitnessInjury> {
  List<bool> selectedItems = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Text(
              'Do you currently experience any pain or discomfort in your body',
              style: TextStyles.font28White700,
              textAlign: TextAlign.center,
            ),
            verticalSpace(15),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) => ItemOfList(
                model: injuryItems[index],
                isSelected: selectedItems[index],
                onSelectionChanged: (isSelected) {
                  setState(() {
                    selectedItems[index] = isSelected;
                  });
                },
              ),
              itemCount: injuryItems.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
      );
  }
}