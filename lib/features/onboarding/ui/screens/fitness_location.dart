import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/item_Model.dart';
import '../widgets/item_of_list.dart';

class FitnessLocation extends StatefulWidget{
  const FitnessLocation({Key? key}) : super(key: key);

  @override
  State<FitnessLocation> createState() => _FitnessLocationState();
}

class _FitnessLocationState extends State<FitnessLocation> {
  List<bool> selectedItems = List.generate(3, (index) => false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            Text(
              'Where do you exercise ?',
              textAlign: TextAlign.center,
              style: TextStyles.font28White700,
            ),
            verticalSpace(90),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) => ItemOfList(
                model: locationItems[index],
                isSelected: selectedItems[index],
                onSelectionChanged: (isSelected) {
                  setState(() {
                    selectedItems[index] = isSelected;
                  });
                },
              ),
              itemCount: locationItems.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }

}

