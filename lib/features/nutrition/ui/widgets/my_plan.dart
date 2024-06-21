import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class MyPlan extends StatelessWidget{
  const MyPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
     builder: (context,state){
       final cubit = context.read<NutritionCubit>();
       if(cubit.mealOfWeekResponse == null){
         cubit.getMealOfWeek();
       }
       return  CustomScrollView(
         slivers: [
           SliverToBoxAdapter(
             child: Stack(
               children: [
                 Padding(
                   padding: EdgeInsets.all(10.h),
                   child: Image.asset('assets/images/nutrition_plan.png'),
                 ),
                 Positioned(
                   bottom: 30.h,
                   left: 20.h,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Standard',
                         style: TextStyles.font16White700,
                       ),
                       Text(
                         'EatAll Essence : Unrestricted Nutrition',
                         style: TextStyles.font13White600,
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
           if(cubit.mealOfWeekResponse != null)
             SliverList(
             delegate: SliverChildBuilderDelegate((context,index) => rowOfDay(cubit,index),
               childCount: 6,
             ),
           ),
         ],
       );
     },
    );
  }

  Widget rowOfDay(cubit,index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(cubit.nameOfDays[index],
            style: TextStyles.font16White700,),
        ),
        SizedBox(
          height: 230.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, indexx) {
              return itemOfDay(index,indexx,cubit);
            },
          ),
        ),
      ],
    );
  }
  Widget itemOfDay(int dayIndex, int mealIndex,cubit){
    final days = cubit.mealOfWeekResponse.data.days;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SizedBox(
            height: 250.h,
            child: SvgPicture.asset(cubit.imageOfContainer[mealIndex],
              fit: BoxFit.fill,
              placeholderBuilder: (context) => const CircularProgressIndicator(),

            ),
          ),
          Positioned(
            top: 60.h,
            left: 10.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${cubit.nameOfMeals[mealIndex]}',
                    style: TextStyles.font13White700.copyWith(
                      fontSize: 14.sp
                    ),

                ),
                verticalSpace(10),
                Text(
                  '${days[dayIndex].meals[mealIndex].name}',
                  style: TextStyles.font13White600,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
                verticalSpace(15),
                Text('${days[dayIndex].meals[mealIndex].calories} kcal',
                    style: TextStyles.font13White600
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }

}
