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

class ExerciseOfCategory extends StatelessWidget{
  final String nameOfCategory;
  const ExerciseOfCategory({Key? key, required this.nameOfCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit,WorkoutState>(
      builder: (context,state) {
        final cubit = context.read<WorkoutCubit>();
        if(cubit.allExerciseResponse == null ) {
          cubit.getExerciseByCategory(nameOfCategory);
        }
        cubit.nameOfCategory = nameOfCategory;
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
                          onChanged: (value) {
                            cubit.getSearchExercise();
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
                          'Exercises of $nameOfCategory',
                          style: TextStyles.font16White700,
                        ),
                      ],
                    ),
                  ),
                ),
                if(state is ExerciseLoading || state is SearchExerciseLoading)
                  const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator())),
                if(state is ExerciseSuccess)
                  SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: 0.7,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => itemOfList(context,cubit.allExerciseResponse?.data,index),
                    childCount: cubit.allExerciseResponse?.data?.length,
                  ),
                ),
                if(state is  SearchExerciseSuccess)
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 15.h,
                      childAspectRatio: 0.7,
                    ),
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) => itemOfList(context,cubit.searchExercise?.data?[index],index),
                      childCount: cubit.searchExercise?.data?.length,
                    ),
                  ),
                if(state is ExerciseError || state is SearchExerciseError)
                  const SliverToBoxAdapter(
                      child: Center(child: Text('No data here to show '))),

              ],
            ),
          ),
        );
      },

    );
  }

  Widget itemOfList(BuildContext context,model,index) =>  GestureDetector(
    onTap: (){
     context.pushNamed(
         Routes.exerciseInDetails,
       arguments: {
         'index' : index,
         'model' : model
       }
     );

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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                model[index].name,
                style:TextStyles.font13White700,
              ),
            ),
          ],
        ),
      ),
    ),
  );

}
