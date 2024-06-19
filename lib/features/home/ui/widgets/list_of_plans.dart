import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/styles.dart';

class ListOfPlans extends StatelessWidget {
  const ListOfPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SizedBox(
        height: 200.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Plans',
              style: TextStyles.font19White700,
            ),
            verticalSpace(20),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  itemOfPlan(
                    text: 'Workout plan',
                    pathOfImage:'assets/images/plans.png',
                    onTap: (){
                      context.pushNamed(Routes.myTrainerScreen);
                    },

                  ),
                  itemOfPlan(
                    text:'Nutrition plan',
                    pathOfImage:'assets/images/nutrition.png',
                    onTap: (){
                      context.pushNamed(Routes.nutritionScreen);
                    },
                  ),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemOfPlan({required String text,required String pathOfImage ,required VoidCallback onTap}) => GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: EdgeInsets.only(right: 14.w),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 150.h,
            width: 250.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              pathOfImage,
              fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: TextStyles.font16White700,
            ),
          ),
        ],
      ),
    ),
  );
}
