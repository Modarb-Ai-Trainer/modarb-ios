import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: DropdownButton(
                      value: cubit.valueChoose,
                      hint:  cubit.valueChoose == null ? const Text('select item') : Text('${cubit.valueChoose}') ,
                      dropdownColor: ColorsManager.lighterGray,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 33,
                      isExpanded: true,
                      underline: const SizedBox(),
                      onChanged: (String ?newValue) {
                        cubit.emitChangeSelection(newValue);
                      },
                      items: cubit.itemsExercisesList.map((valueItem){
                        return DropdownMenuItem(
                          value :valueItem,
                          child : Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                  Text(
                    'Popular plans',
                    style: TextStyles.font16White700,),
                  SizedBox(
                    height: 200.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) =>itemOfList(),
                      itemCount: 5,
                    ),
                  ),
                  Text(
                    'Dumbbell only routine ',
                    style: TextStyles.font16White700,),
                  SizedBox(
                    height: 200.h,
                    child: ListView.builder(
                      shrinkWrap: true,

                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) =>itemOfList(),
                      itemCount: 5,
                    ),
                  ),
                  Text(
                    'Quick workout',
                    style: TextStyles.font16White700,),
                  SizedBox(
                    height: 200.h,
                    child: ListView.builder(
                      shrinkWrap: true,

                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) =>itemOfList(),
                      itemCount: 5,
                    ),
                  ),
                  Text(
                    'Home workout',
                    style: TextStyles.font16White700,),
                  SizedBox(
                    height: 200.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) =>itemOfList(),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget itemOfList(){
    return Padding(
      padding: EdgeInsets.only(right: 15.w,
      top: 15.h,
      bottom: 15.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 150.h,
            width: 225.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/images/plans.png',
              fit: BoxFit.fill,),
          ),
          SizedBox(
            width: 100.w,
            height: 100,
            child: Text(
              'Burn fats and build strength ',
              style: TextStyles.font16White700,
            ),
          ),
        ],
      ),
    );
  }
}
