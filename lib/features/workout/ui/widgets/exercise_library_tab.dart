import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';

class ExerciseLibraryTab extends StatelessWidget{
  const ExerciseLibraryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state){
        final cubit = context.read<WorkoutCubit>();
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Center(
                    child: Text(
                      'All Muscles',
                      style: TextStyles.font19White700,
                    ),
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) => itemOfList(context,cubit.itemsExercisesList,index,cubit,cubit.imageList),
                  childCount: cubit.itemsExercisesList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget itemOfList(BuildContext context, list,index,cubit,imageList) =>  GestureDetector(
    onTap: () {
      context.pushNamed(Routes.exerciseOfCategory,
          arguments:{
            'nameOfCategory': list[index],
          }
      );
      cubit.getExerciseByCategory(list[index]);
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lighterGray,
          borderRadius:BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
               topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
                child: SizedBox(
                  height: 150.h,
                    width: double.infinity,
                    child: Image.asset(imageList[index],
                    fit: BoxFit.fill,
                    ),
                )),
            verticalSpace(10),
            Text(
              list[index],
              style:TextStyles.font13White700,
            ),
          ],
        ),
      ),
    ),
  );

}

