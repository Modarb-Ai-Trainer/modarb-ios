
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BuildMealOfDiet extends StatelessWidget{
  const BuildMealOfDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: double.infinity,
      child: TimelineTile(
        axis: TimelineAxis.vertical,
        alignment: TimelineAlign.start,
        lineXY: 0.1,
        isFirst: true,
        isLast: true,
        beforeLineStyle: const LineStyle(
          color: ColorsManager.lightPurple,
          thickness: 3,
        ),
        indicatorStyle: IndicatorStyle(
          color: Colors.transparent,
          padding: const EdgeInsets.all(5),
          iconStyle: IconStyle(
            color: ColorsManager.lightPurple,
            iconData: Icons.circle,
            fontSize: 26.sp,
          ),
        ),
        endChild: buildItemOfMeal(context),

      ),
    );
  }

  Widget buildItemOfMeal(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed('');
      },
      child: SizedBox(
        width: double.infinity,
        height: 180.h,
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
               children: [
                 Image.asset('assets/images/food.png'),
                 Column(
                   children: [
                     Text('Glazed duck fillet',
                     style: TextStyles.font13White700
                       ,),
                     Text('20 g',
                         style: TextStyles.font13White400
                     ),
                   ],
                 ),
               ],
             ),
              verticalSpace(10),
              Row(
               children: [
                 Image.asset('assets/images/food.png'),
                 Column(
                   children: [
                     Text('Glazed duck fillet',
                     style: TextStyles.font13White700
                       ,),
                     Text('20 g',
                         style: TextStyles.font13White400
                     ),
                   ],
                 ),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }

}
