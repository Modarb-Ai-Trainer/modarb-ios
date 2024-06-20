import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/core/widgets/horizontal_line.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class SheetOfDetailsOfMeal extends StatelessWidget{
  final String nameOfiIngredients;
  final int index;
  final List<Datum> data;
  final List<Datum> listOfSelected;

  const SheetOfDetailsOfMeal({Key? key, required this.nameOfiIngredients, required this.data, required this.index, required this.listOfSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NutritionCubit,NutritionState>(
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
                                nameOfiIngredients,
                                style: TextStyles.font16White700,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          const DividerLine(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'serving size',
                                      style: TextStyles.font16White700,
                                    ),
                                    Text(
                                      '${data[index].servingSize} g',
                                      style: TextStyles.font16White700,
                                    ),
                                  ],
                                ),
                                verticalSpace(20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Number of serving',
                                      style: TextStyles.font16White700,
                                    ),
                                    Text(
                                      '${data[index].servingsCount}',
                                      style: TextStyles.font16White700,
                                    ),
                                  ],
                                ),
                                verticalSpace(20),
                                const DividerLine(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            itemOfList(
                              'Calories','${data[index].calories} kcal',
                            ),
                            itemOfList(
                              'Carbs','${data[index].carbs}',
                            ),
                            itemOfList(
                              'Protein','${data[index].proteins} mg',
                            ),
                            itemOfList(
                              'Fats','${data[index].fats} mg',
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: AppTextButton(
                  buttonText: 'Add to meal',
                  onPressed: () {
                    cubit.selectedItems = listOfSelected;
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget itemOfList(name, value){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
              style: TextStyles.font16White700,),
              Text(
                value,
              style: TextStyles.font16White700,),

            ],
          ),
          verticalSpace(10),
          const DividerLine(),
        ],
      ),
    );
  }
}
