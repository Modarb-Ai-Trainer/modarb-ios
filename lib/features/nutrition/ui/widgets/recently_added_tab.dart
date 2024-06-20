import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/horizontal_line.dart';
import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/sheet_of_details_of_meal.dart';

class RecentlyAddedTab extends StatefulWidget {
  const RecentlyAddedTab({Key? key}) : super(key: key);

  @override
  _RecentlyAddedTabState createState() => _RecentlyAddedTabState();
}

class _RecentlyAddedTabState extends State<RecentlyAddedTab> {
  final List<Datum> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit, NutritionState>(
      builder: (context, state) {
        final cubit = context.read<NutritionCubit>();
        if (cubit.ingredientsResponse == null) {
          cubit.getIngredients();
        }
        return CustomScrollView(
          slivers: [
            if (state is GetIngredientsLoading || state is GetIngredientsSearchLoading)
              const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              ),
            if (cubit.ingredientsResponse != null )
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => itemOfSuggestList(
                    context,
                    cubit.ingredientsResponse?.data,
                    index,
                    cubit,
                  ),
                  childCount: cubit.ingredientsResponse?.data.length,
                ),
              ),
            if (cubit.ingredientsSearchResponse != null && state is GetIngredientsSearchSuccess)
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => itemOfSuggestList(
                    context,
                    cubit.ingredientsSearchResponse?.data,
                    index,
                    cubit,
                  ),
                  childCount: cubit.ingredientsSearchResponse?.data.length,
                ),
              ),
            if (state is GetIngredientsError || state is GetIngredientsSearchError)
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


  Widget itemOfSuggestList(context, model, index, cubit) {
    final isSelected = selectedItems.contains(model[index]);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedItems.remove(model[index]);
          } else {
            selectedItems.add(model[index]);
          }

        });
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return SheetOfDetailsOfMeal(
              nameOfiIngredients: model[index].name,
              data: model,
              index: index, listOfSelected: selectedItems,
            );
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? ColorsManager.lighterGray : Colors.transparent,
          ),
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
                    child: isSelected ? Icon(
                      Icons.check,
                      size: 22.sp,
                      color: ColorsManager.lightPurple,
                    ) :  Icon(
                      Icons.add,
                      size: 20.sp,
                      color: ColorsManager.lightPurple,
                    ),
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: Text(
                      '${model[index].name}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.font13White700,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              const DividerLine(),
            ],
          ),
        ),
      ),
    );
  }
}
