import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import '../widgets/checkbox_of_equip.dart';

class FitnessEquipment extends StatelessWidget{
  const FitnessEquipment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'What Equipment do you have available to you?',
                    style: TextStyles.font28White700,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(20),
                  const CheckboxList(),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




