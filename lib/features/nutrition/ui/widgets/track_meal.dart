import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/styles.dart';

class ItemOfTrackMeal extends StatelessWidget{
  const ItemOfTrackMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 120.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/images/plans.png',
              fit: BoxFit.fill,),
          ),
          Column(
            children: [
              Text(
                '',
                style: TextStyles.font16White700,),
            ],
          ),
          // SizedBox(
          //   width: 100.w,
          //   height: 100,
          //   child: Text(
          //     'Burn fats and build strength ',
          //     style: TextStyles.font16White700,
          //   ),
          // ),
        ],
      ),
    );
  }
}
