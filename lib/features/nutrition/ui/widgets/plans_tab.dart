import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/my_plan.dart';
import 'package:modarb_app/features/nutrition/ui/widgets/other_plans.dart';

class PlansTab extends StatelessWidget{
  const PlansTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state) {
        final cubit = context.read<NutritionCubit>();
        return Scaffold(
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                child: DropdownButton(
                  value: cubit.valueChoose,
                  hint: Text('${cubit.valueChoose}'),
                  dropdownColor: ColorsManager.lighterGray,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 33,
                  isExpanded: true,
                  underline: const SizedBox(),
                  onChanged: (String? newValue) {
                    cubit.emitChangeSelection(newValue);
                  },
                  items: cubit.itemsList.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: cubit.valueChoose == 'Other Plan' ? const OtherPlans() : const MyPlan(),
              ),
            ],
          ),
        );
      },
    );
  }

}

