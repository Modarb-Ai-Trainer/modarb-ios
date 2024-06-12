import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/workout/logic/workout_cubit.dart';
import 'package:modarb_app/features/workout/logic/workout_states.dart';

class ExerciseOfCategory extends StatelessWidget{
  const ExerciseOfCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state) {
        final cubit = context.read<WorkoutCubit>();
        return Scaffold(
          appBar: AppBar(
                 scrolledUnderElevation: 0,
               ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Column(
                      children: [
                        TextFormField(
                                controller: cubit.searchController,
                                onSaved: (String? value){
                                  // cubit.getSearchData(value!);
                                },
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
                          'Exercises of Shoulders',
                          style: TextStyles.font16White700,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: 0.7,
                  ),
                  delegate: SliverChildBuilderDelegate((BuildContext context, int index) => itemOfList(context),
                    childCount: 8,
                  ),
                ),
              ],
            ),
          ),
        );
      },

    );
  }

  Widget itemOfList(BuildContext context) =>  GestureDetector(
    onTap: (){
      // context.pushNamed(Routes.exerciseOfCategory);

    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
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
    ),
  );
}
