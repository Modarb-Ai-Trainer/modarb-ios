import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/onboarding/data/models/button_model.dart';
import 'package:modarb_app/features/onboarding/ui/screens/board1.dart';
import 'package:modarb_app/features/onboarding/ui/screens/board2.dart';
import 'package:modarb_app/features/onboarding/ui/screens/board3.dart';
import 'package:modarb_app/features/onboarding/ui/widgets/row_of_skip.dart';
import 'package:modarb_app/features/onboarding/ui/widgets/smooth_page_indicator.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class OnBoardingScreen extends StatefulWidget{
   const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: boardController,
            children: const [
              Board1(),
              Board2(),
              Board3(),
            ],
            onPageChanged: (value){
              setState(() {
                index = value;
              });
            },

          ),
          if(index != 2) Positioned(
            top: 25.h,
            right: 5.h,
            left: 5.h,
            child: RowOfSkip(
              boardController: boardController,
            ),
          ),
          Positioned(
            bottom: 100.h,
            right: 50.h,
            left: 50.h,
            child: SmoothPage(
              boardController: boardController,
            ),
          ),
          Positioned(
            bottom: 30.h,
            right: 10.h,
            left: 10.h,
            child: AppTextButton(
              buttonText: buttonModel[index].buttonText,
              textStyle: TextStyles.font20White600,
              onPressed: (){
                boardController.nextPage(
                  duration: const Duration(
                    seconds: 1,
                  ),
                  curve: Curves.decelerate,
                );
                if(index == 2){
                  context.pushNamed(Routes.fitnessChoice);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
