import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/home/logic/home_cubit.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ContainerOfWeeks extends StatelessWidget {
   const ContainerOfWeeks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state){
        final cubit = context.read<HomeCubit>();
        return Container(
          width: double.infinity,
          height: 220.h,
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorsManager.lightGray,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_rounded,
                      size: 20.sp,
                      color: ColorsManager.mainWhite,
                    ),
                    Text(
                      'week 1',
                      style:TextStyles.font13White700,
                    ),
                    Icon(Icons.arrow_forward_ios,
                      size: 20.sp,
                      color: ColorsManager.mainWhite,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(), // Prevent scrolling beyond boundaries
                  itemBuilder: (context,index) => myStreaks(cubit.days[index], cubit.points[index]),
                  itemCount: cubit.days.length,
                ),
              ),
              AppTextButton(
                buttonText: 'Claim reward',
                textStyle: TextStyles.font16White700,
                buttonHeight: 40,
                buttonWidth: 160.w,
                onPressed: (){

                },
              ),

            ],
          ),
        );
      },
    );
  }

  Widget myStreaks(day, point ) {
    return SizedBox(
      width: 45.w,
      height: 50,
      child: TimelineTile(
        lineXY: 0.1,
        axis: TimelineAxis.horizontal,
        alignment: TimelineAlign.center,
        beforeLineStyle: const LineStyle(
          color: ColorsManager.mainYellow,
          thickness: 2,
        ),
        isFirst: day == 1,
        startChild: Text(
          '$day',
          style: TextStyles.font13White600,
        ),
        indicatorStyle: IndicatorStyle(
          color: Colors.transparent,
          padding: const EdgeInsets.all(5),
          iconStyle: IconStyle(
            color: ColorsManager.mainYellow,
            iconData: Icons.local_fire_department_rounded,
            fontSize: 34.sp,
          ),
        ),
        endChild: Text(
          '$point',
          style: TextStyles.font13White600,
        ),
      ),
    );

  }
}
