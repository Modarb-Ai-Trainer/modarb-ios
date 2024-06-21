import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class ContainerOfAddAndRemove extends StatelessWidget{
  const ContainerOfAddAndRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state){
        final cubit = context.read<NutritionCubit>();

        return Container(
          width: 90.w,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: ColorsManager.lighterPurple,
            boxShadow: [
              BoxShadow(
                color: ColorsManager.mainPurple.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: (){
                    cubit.emitAddWater(1);
                  },
                  child: _buildIconCircle(Icons.add)),
              Container(
                width: 1.w,
                height: 30.h,
                color: ColorsManager.mainPurple,
              ),
              GestureDetector(
                  onTap: (){
                    cubit.emitMinusWater(1);
                  },
                  child: _buildIconCircle(Icons.remove)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIconCircle(IconData iconData) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: ColorsManager.mainPurple,
          ),
        ),
      ),
      child: Icon(
        iconData,
        size: 14.sp,
        color: ColorsManager.mainPurple,
      ),
    );
  }
}
