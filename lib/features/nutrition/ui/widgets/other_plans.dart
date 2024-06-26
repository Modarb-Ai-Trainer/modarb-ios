import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
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
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w,),
                  child: Text(
                    'Available plans',
                    style: TextStyles.font16White700,
                  ),
                ),
              ),
              SliverList(delegate: SliverChildBuilderDelegate(
                  (context,index) => GestureDetector(
                    onTap: (){
                      context.pushNamed(
                        Routes.detailsOfPlan,
                        arguments: {
                          'index' : index,
                        }
                      );
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                              child: Image.network('${cubit.mealPlansResponse?.data[index].image}',)),
                        ),
                        Positioned(
                          bottom: 30.h,
                          left: 20.h,
                          child: Text(
                            '${cubit.mealPlansResponse?.data[index].description}',
                            style: TextStyles.font16White700.copyWith(
                                color: Colors.white
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                      ],
                    ),
                  ),
                childCount: cubit.mealPlansResponse?.data.length ,
              ),
              ),
            ],
          ),
        );
      },
    );
  }

}

