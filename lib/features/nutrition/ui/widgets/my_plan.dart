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
           SliverList(
             delegate: SliverChildBuilderDelegate((context,index) => Column(
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
                     itemBuilder: (context, index) {
                       return itemOfDay(index,cubit);
                     },
                   ),
                 ),
               ],
             ),
               childCount: 6,
             ),
           ),
         ],
       );
     },
    );
  }

  Widget itemOfDay(index,cubit){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SvgPicture.asset(cubit.imageOfContainer[index],
            fit: BoxFit.fill,
            placeholderBuilder: (context) => const CircularProgressIndicator(),

          ),
          Positioned(
            top: 60.h,
            left: 15.h,
            child: Column(
              children: [
                Text(cubit.nameOfMeals[index],
                    style: TextStyles.font16White700.copyWith(
                      fontSize: 14.sp,
                    )
                ),
                verticalSpace(10),
                Text('Bread',
                    style: TextStyles.font13White600
                ),
                verticalSpace(10),
                Text('300 kcal',
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
