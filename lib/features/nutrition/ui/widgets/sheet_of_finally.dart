import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class SheetOfDetailsOfFinally extends StatelessWidget{
  final String nameOfMeals;

  const SheetOfDetailsOfFinally({Key? key, required this.nameOfMeals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state){
        final cubit = context.read<NutritionCubit>();

        return Container(
          decoration: const BoxDecoration(
            color: ColorsManager.darkGray,

          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back),
                              ),
                              Text(
                                nameOfMeals,
                                style: TextStyles.font19White700,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: AppTextButton(
                              buttonText: 'Add food',
                              textStyle: TextStyles.font16White700,
                              buttonHeight: 30.h,
                              buttonWidth: 120.w,
                              onPressed: (){
                                Navigator.pop(context);

                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (context, index) => itemOfList(cubit.selectedItems,index),
                        childCount: cubit.selectedItems.length,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: AppTextButton(
                  buttonText: 'Confirm',
                  onPressed: () {
                    cubit.enrollMeal();
                    if(cubit.enrollMealResponse?.status == 200){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${cubit.enrollMealResponse?.message}',
                            style: TextStyles.font16White700,
                          ),
                          backgroundColor: ColorsManager.lighterGray,
                          duration: const Duration(seconds: 5),
                        ),
                      );
                      Navigator.pop(context);
                      Navigator.pop(context);
                    }

                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget itemOfList(list,index){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${list[index].name}',
            style: TextStyles.font16White700,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${list[index].carbs} carbs, ${list[index].proteins} proteins,  ${list[index].fats} fats ',
                style: TextStyles.font13White600,),
              Text(
                '${list[index].calories} kcal',
                style: TextStyles.font13White600,),

            ],
          ),

        ],
      ),
    );
  }

}
