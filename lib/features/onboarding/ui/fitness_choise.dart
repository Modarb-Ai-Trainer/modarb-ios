import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_goal.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_injury.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_level.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_location.dart';
import 'package:modarb_app/features/onboarding/ui/screens/height_and_weight.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../smart_trainer/ui/screens/smart_trainer.dart';
import '../../smart_trainer/ui/screens/trainer_before_register.dart';
import 'screens/fitness_equipment.dart';
import 'screens/gender_and_age.dart';

class FitnessChoice extends StatefulWidget{
  const FitnessChoice({Key? key}) : super(key: key);

  @override
  State<FitnessChoice> createState() => _FitnessChoiceState();
}

class _FitnessChoiceState extends State<FitnessChoice> {

  var fitnessController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            fitnessController.previousPage(
              duration: const Duration(
                seconds: 1,
              ),
              curve: Curves.decelerate,
            );

          },
        ),
      ),
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: fitnessController,
            children: const [
              FitnessGoal(),
              GenderAndAge(),
              HeightAndWeight(),
              SmartTrainer(),
              FitnessLevel(),
              FitnessLocation(),
              FitnessEquipment(),
              FitnessInjury(),
              TrainerBeforeRegister(),
            ],
            onPageChanged: (value){
              setState(() {
                index = value;
              });
            },

          ),
          Positioned(
            bottom: 25.h,
            right: 20.h,
            left: 20.h,
            child: AppTextButton(
              buttonText:'Next',
              onPressed: (){
                fitnessController.nextPage(
                  duration: const Duration(
                    seconds: 1,
                  ),
                  curve: Curves.decelerate,
                );
                if(index == 8){
                  context.pushNamed(Routes.register);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
