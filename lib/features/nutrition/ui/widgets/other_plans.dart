import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

import '../../../../core/theming/styles.dart';

class OtherPlans extends StatelessWidget{
  const OtherPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state) {
        final cubit = context.read<NutritionCubit>();
        return Scaffold(
          body:  CustomScrollView(
            slivers: [
              SliverList(delegate: SliverChildBuilderDelegate(
                  (context,index) => GestureDetector(
                    onTap: (){},
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset('assets/images/nutrition_plan.png'),
                        ),
                        Positioned(
                          bottom: 30.h,
                          left: 20.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Standarddddd',
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
                childCount: 5,
              ),
              ),
            ],
          ),
        );
      },
    );
  }

}

