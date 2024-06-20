import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_cubit.dart';
import 'package:modarb_app/features/nutrition/logic/nutrition_state.dart';

class DetailsOfPlan extends StatelessWidget{
  final int index;
  const DetailsOfPlan({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit,NutritionState>(
      builder: (context,state){
        final cubit = context.read<NutritionCubit>();

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 250.h,
                    width: double.infinity,
                    child: Image.asset('assets/images/nutrition_plan.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    child: IconButton(
                      onPressed: (){
                        context.pop();
                      },
                      icon: const Icon(Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60.h,
                    left: 10.h,
                    child:Text(
                      '${cubit.mealPlansResponse?.data[index].description}',
                      style: TextStyles.font16White700,
                      overflow: TextOverflow.ellipsis,
                    ),


                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical :10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About the plan',style: TextStyles.font16White700,),
                    verticalSpace(10),
                    Text('${cubit.mealPlansResponse?.data[index].description}',
                      style: TextStyles.font13White600,),
                    verticalSpace(20),

                    Text('Your Journey :',style: TextStyles.font16White700,),
                    verticalSpace(10),
                    Text('${cubit.mealPlansResponse?.data[index].yourJourney}',
                      style: TextStyles.font13White600,),
                    verticalSpace(20),

                    Text('Level: ${cubit.mealPlansResponse?.data[index].level}',style: TextStyles.font16White700,),

                    verticalSpace(20),
                    Text('Key Features:',style: TextStyles.font16White700,),
                    verticalSpace(10),
                    Text(
                      '${cubit.mealPlansResponse?.data[index].keyFeatures[index].title} : ${cubit.mealPlansResponse?.data[index].keyFeatures[index].description}',
                      style: TextStyles.font13White600,),
                    verticalSpace(10),
                    Text(
                      '${cubit.mealPlansResponse?.data[index].keyFeatures[index+1].title} : ${cubit.mealPlansResponse?.data[index].keyFeatures[index+1].description}',
                      style: TextStyles.font13White600,),

                  ],
                ),
              ),
              verticalSpace(80),
              Center(
                child: AppTextButton(
                  buttonText: 'Enroll plan',
                  buttonWidth: 200.w,
                  onPressed: (){

                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
