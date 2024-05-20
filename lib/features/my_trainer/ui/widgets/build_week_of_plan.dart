
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_vertical_divider.dart';
import 'package:modarb_app/features/my_trainer/data/models/day_model.dart';
import 'package:modarb_app/features/my_trainer/data/models/week_model.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_states.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BuildWeekOfPlan extends StatelessWidget{
  final int index;
  final List<Week> listOfWeek;
  final List<Day> listOfDay;

  const BuildWeekOfPlan({Key? key, required this.index, required this.listOfWeek, required this.listOfDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<TrainerCubit,TrainerState>(
      builder: (context,state) {
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
            endChild: buildItemOfWeekOpen(context,index,listOfWeek,listOfDay),
          ),
        );
      },

    );
  }

  Widget buildItemOfWeekOpen(BuildContext context,index,listOfWeek,listOfDay) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
            Routes.weekOfPlanScreen,
          arguments:{
            'index': index,
            'listOfWeek': listOfWeek,
            'listOfDay': listOfDay,
          }

        );
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
                    'Week ${index + 1} : ${listOfWeek[index].weekName}',
                    style: TextStyles.font16White700,
                  ),
                ],
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '${listOfWeek[index].weekDescription}',
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
              SizedBox(
                height: 30.h,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index) => buildItemOfDay(listOfDay,index),
                  itemCount: listOfDay.length,
                  scrollDirection: Axis.horizontal,
                ),
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

  Widget buildItemOfDay(listOfDay,index) => Padding(
    padding: const EdgeInsets.all(2.0),
    child: CircleAvatar(
      radius: 15.r,
      backgroundColor: ColorsManager.lightPurple,
      child: Text(
        'D${listOfDay[index].dayNumber}',
        style: TextStyles.font16White700,
      ),
    ),
  );
}
