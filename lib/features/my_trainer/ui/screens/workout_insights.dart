import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';

class WorkoutInsights extends StatelessWidget{
  const WorkoutInsights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            Container(
              constraints:  const BoxConstraints.expand(),
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.1, .8),
                  end: Alignment(0.01, -1),
                  colors: [Color(0xFF5E35E8), Color(0x00D9D9D9)],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 60.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Workout\n insights',
                    style: TextStyles.font28White700,
                  ),
                  verticalSpace(30),
                  Text(
                    'Day 1',
                    style: TextStyles.font19White700,
                  ),
                  Text(
                    'full body ',
                    style: TextStyles.font19White700,
                  ),
                  verticalSpace(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '       6\nExercises',
                        style: TextStyles.font16White700,
                      ),
                      Text(
                        ' 20\nsets',
                        style: TextStyles.font16White700,
                      ),
                      Text(
                        '  30:00\nDuration',
                        style: TextStyles.font16White700,
                      ),
                    ],
                  ),
                  verticalSpace(40),
                  Text(
                    'Post Workout meal ',
                    style: TextStyles.font19White700,
                  ),
                  verticalSpace(20),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index)=> Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/nutrition.png'),
                      ),
                      itemCount: 2,

                    ),
                  ),
                  verticalSpace(20),
                  AppTextButton(
                      buttonText: 'Finish',
                      textColor: ColorsManager.mainPurple,
                      backgroundColor: Colors.white,
                      onPressed: (){
                        context.pushReplacementNamed(Routes.homePage);
                      }
                  ),

                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
