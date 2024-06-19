import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class DetailsOfPlan extends StatelessWidget{
  const DetailsOfPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                left: 70.h,
                child:Text(
                  'Standarddddd',
                  style: TextStyles.font16White700,
                ),


              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About the plan',style: TextStyles.font16White700,),
                verticalSpace(10),

                Text('Intermittent Fasting is more than a diet; it strategically timing your meals and fasting periods, you tap into your body ',
                  style: TextStyles.font13White600,),
                verticalSpace(20),
                Text('Key Features:',style: TextStyles.font16White700,),
              ],
            ),
          ),
          verticalSpace(150),
          AppTextButton(
              buttonText: 'Enroll plan',
              buttonWidth: 250.w,
              onPressed: (){},
          ),
        ],
      ),
    );
  }
}
