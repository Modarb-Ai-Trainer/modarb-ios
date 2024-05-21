import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/home/logic/home_cubit.dart';
import 'package:modarb_app/features/home/logic/home_states.dart';
import 'package:modarb_app/features/home/ui/widgets/container_of_weeks.dart';
import 'package:modarb_app/features/home/ui/widgets/daily_goals.dart';
import 'package:modarb_app/features/home/ui/widgets/daily_intake.dart';
import 'package:modarb_app/features/home/ui/widgets/list_of_plans.dart';
import 'package:modarb_app/features/home/ui/widgets/today_diet.dart';
import 'package:modarb_app/features/home/ui/widgets/today_workout_widget.dart';
import 'package:modarb_app/features/my_trainer/logic/trainer_cubit.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context,index){
        final cubit = context.read<HomeCubit>();
        final cubit2 = context.read<TrainerCubit>();
        final days = cubit2.dayModel ?? [];

        String? userName = cubit.homeResponse?.data?.user?.name;
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 70.h,
            leading: Padding(
              padding: EdgeInsets.all(6.h),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
            title:Text(
              'Hey,\n $userName ',
              style:TextStyles.font13White600,
            ),
            titleSpacing: 5,
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications_none_sharp,
                    size: 30.sp,
                    color: ColorsManager.mainPurple,
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  const ContainerOfWeeks(),
                  const ListOfPlans(),
                  TodayWorkoutWidget( ),
                  const TodayDiet(),
                  const DailyIntake(),
                  const DailyGoals(),
                ],
              ),
            ),
          ),

        );
      },

    );
  }
}
