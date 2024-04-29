import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class CustomWorkoutTab extends StatelessWidget{
  const CustomWorkoutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Your saved templates',
                  style: TextStyles.font19White700
              ),
              verticalSpace(10),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder:(context, index) => itemOfTemplate(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),

    );
  }

  Widget itemOfTemplate() => Padding(
    padding: EdgeInsets.symmetric(vertical: 10.h),
    child: Container(
      width: double.infinity,
      height: 230.h,
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quick workout',
                  style: TextStyles.font13White700,
                ),
                const Icon(Icons.more_horiz_sharp,
                  color: ColorsManager.mainPurple,
                ),
              ],
            ),
            verticalSpace(10),
            Text(
              'Tuesday , 12 Dec',
              style: TextStyles.font12White600,

            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/timer.svg'),
                Text(
                  '30 min',
                  style: TextStyles.font12White600,
                ),
                horizontalSpace(3),
                SvgPicture.asset('assets/icons/weight.svg'),
                Text('50 kg',
                  style: TextStyles.font12White600,
                ),
                horizontalSpace(3),

                SvgPicture.asset('assets/icons/Page.svg'),
                Text('16 reps',
                  style: TextStyles.font12White600,
                ),


              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Exercises',
                  style: TextStyles.font13White700,
                ),
                Text('sets             ',
                  style: TextStyles.font13White700,
                ),

              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chest press',
                  style: TextStyles.font12White600,
                ),
                Text('15 kg  -4 x 15',
                  style: TextStyles.font12White600,
                ),

              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Deadlift',
                  style: TextStyles.font12White600,
                ),
                Text('10 kg  -4 x 15',
                  style: TextStyles.font12White600,
                ),

              ],
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('tricep extension cable',
                  style: TextStyles.font12White600,
                ),
                Text('20 kg  -4 x 15',
                  style: TextStyles.font12White600,
                ),

              ],
            ),
          ],
        ),
      ),
    ),
  );
}
