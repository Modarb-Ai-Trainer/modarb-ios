import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';

class WorkoutProgramsTab extends StatelessWidget{
  const WorkoutProgramsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state){
        var cubit = context.read<WorkoutCubit>();

        if(cubit.workoutProgramResponse == null) {
          cubit.getWorkoutPrograms();
        }
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              if(state is WorkoutProgramsLoading)
                const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainPurple,
                    ),
                  ),
                ),
              if(cubit.workoutProgramResponse != null)
                SliverList( delegate:SliverChildBuilderDelegate(
                    (context,index) => itemOfList(context,cubit.workoutProgramResponse?.data,index),
                childCount: cubit.workoutProgramResponse?.data.length,

              ), ),
              if(state is WorkoutProgramsError)
                 SliverToBoxAdapter(
                  child: Center(
                    child:Text(
                      'No programs available',
                      style: TextStyles.font16White700,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget itemOfList(context,model,index){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
            context,
            Routes.workoutProgramEnroll,
            arguments : {
              'index' : index,
          }
        );
      },
      child: Padding(
        padding: EdgeInsets.all(8.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150.h,
             width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/images/plans.png',
                fit: BoxFit.fill,),
            ),
            Center(
              child: Text(
                '${model[index].name}',
                style: TextStyles.font16White700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
