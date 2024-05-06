import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class ExerciseOfCategory extends StatelessWidget{
  const ExerciseOfCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'search',
                hintStyle: const TextStyle(
                    color: ColorsManager.mainPurple
                ),
                filled: true,
                fillColor: ColorsManager.lighterGray,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  borderSide: BorderSide.none,

                ),
                prefixIcon: const Icon(Icons.search,
                  color: ColorsManager.mainPurple,
                ),
              ),
            ),
            verticalSpace(20),
            Text(
                'Shoulders',
            style: TextStyles.font16White700,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) =>  itemOfList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemOfList() =>  Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.lighterGray,
            borderRadius:BorderRadius.circular(20.r),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/test.png'),
              Text(
                'Dumbbell',
                style:TextStyles.font13White700,
              ),
              Text(
                'Shoulder press',
                style:TextStyles.font13White700 ,

              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorsManager.lighterGray,
            borderRadius:BorderRadius.circular(20.r),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/test.png'),
              Text(
                'Dumbbell',
                style:TextStyles.font13White700,
              ),
              Text(
                'Shoulder press',
                style:TextStyles.font13White700 ,

              ),
            ],
          ),
        ),
      ],
    ),
  );
}
