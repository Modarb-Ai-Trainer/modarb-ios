import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorsManager.lightPurple, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Icon(
                  Icons.add,
                  size: 20.sp,
                  color:ColorsManager.lightPurple
                ),
              ),
              Text(
                'Breakfast',
                style: TextStyles.font13White700,),
              Text(
                '250kcal',
                style: TextStyles.font13White700,),
            ],
          ),
        ],
      ),
    );
  }
}
