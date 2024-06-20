import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/horizontal_line.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/sheet_of_details_of_meal.dart';

class RecentlyAddedTab extends StatelessWidget{
  const RecentlyAddedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
     builder: (context,state){
       final cubit = context.read<NutritionCubit>();
       if(cubit.ingredientsResponse == null){
         cubit.getIngredients();
       }
       return CustomScrollView(
         slivers: [
           if(state is GetIngredientsLoading || state is GetIngredientsSearchLoading)
             const SliverToBoxAdapter(
               child: Center(
                   child: CircularProgressIndicator()
               ),
             ),
           if(cubit.ingredientsResponse != null && state is GetIngredientsSuccess)
             SliverList(delegate: SliverChildBuilderDelegate(
                 (context,index) => itemOfSuggestList(context,cubit.ingredientsResponse?.data,index),
             childCount: cubit.ingredientsResponse?.data.length,

           )
             ),
           if(cubit.ingredientsSearchResponse != null && state is GetIngredientsSearchSuccess)
             SliverList(delegate: SliverChildBuilderDelegate(
                   (context,index) => itemOfSuggestList(context,cubit.ingredientsSearchResponse?.data,index),
               childCount: cubit.ingredientsSearchResponse?.data.length,

             )
             ),
           if(state is GetIngredientsError || state is GetIngredientsSearchError)
             SliverToBoxAdapter(
               child: Center(
                 child: Text(
                   'No data here to show',
                   style: TextStyles.font19White700,
                 ),
               ),
             ),
         ],
       );
     },
    );
  }

  Widget itemOfSuggestList(context, model,index){
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return  SheetOfDetailsOfMeal(
              nameOfiIngredients: model[index].name,
              data: model,
              index: index,
            );
          },
        );

      },
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorsManager.lightPurple, // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: Icon(
                      Icons.add,
                      size: 20.sp,
                      color:ColorsManager.lightPurple
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: Text(
                    '${model[index].name}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font13White700,),
                )

              ],
            ),
            verticalSpace(20),
            const DividerLine(),
          ],
        ),
      ),
    );
  }
}
