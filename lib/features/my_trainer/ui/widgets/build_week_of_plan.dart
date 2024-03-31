
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BuildWeekOfPlan extends StatelessWidget{
  const BuildWeekOfPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      width: double.infinity,
      child: TimelineTile(
        axis: TimelineAxis.vertical,
        alignment: TimelineAlign.start,
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
        endChild: buildItemOfWeekOpen(context),
      ),
    );
  }

  Widget buildItemOfWeekOpen(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.weekOfPlanScreen);
      },
      child: Container(
        width: double.infinity,
        height: 180.h,
        decoration: BoxDecoration(
          color: ColorsManager.lighterGray,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
              color: ColorsManager.lightPurple,
              width: 2
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const AppVerticalDivider(),
                  horizontalSpace(10),
                  Text(
                    'Week 1 : Foundation',
                    style: TextStyles.font16White700,
                  ),
                ],
              ),
              verticalSpace(10),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'Start easy in the first week to let your body get used to the workout. It sets the baseline for your progress in the weeks ahead.',
                      style: TextStyles.font13White600,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20.sp,
                    color: ColorsManager.mainPurple,
                  ),
                ],
              ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: ColorsManager.lightPurple,
                    child: Text(
                      'D1',
                      style: TextStyles.font16White700,
                    ),
                  ),
                  horizontalSpace(5),
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: ColorsManager.lightPurple,
                    child: Text(
                      'D1',
                      style: TextStyles.font16White700,
                    ),
                  ),
                  horizontalSpace(5),
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: ColorsManager.lightPurple,
                    child: Text(
                      'D1',
                      style: TextStyles.font16White700,
                    ),
                  ),
                  horizontalSpace(5),
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: ColorsManager.lightPurple,
                    child: Text(
                      'D1',
                      style: TextStyles.font16White700,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemOfWeekClosed() {
    return Container(
      width: double.infinity,
      height: 180.h,
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
            color: ColorsManager.lightPurple,
            width: 2
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const AppVerticalDivider(),
                horizontalSpace(10),
                Text(
                  'Week 1 : Foundation',
                  style: TextStyles.font16White700,
                ),
              ],
            ),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: ColorsManager.lightPurple,
                  child: Text(
                    'D1',
                    style: TextStyles.font16White700,
                  ),
                ),
                horizontalSpace(5),
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: ColorsManager.lightPurple,
                  child: Text(
                    'D1',
                    style: TextStyles.font16White700,
                  ),
                ),
                horizontalSpace(5),
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: ColorsManager.lightPurple,
                  child: Text(
                    'D1',
                    style: TextStyles.font16White700,
                  ),
                ),
                horizontalSpace(5),
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: ColorsManager.lightPurple,
                  child: Text(
                    'D1',
                    style: TextStyles.font16White700,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
