import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_goal.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_injury.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_level.dart';
import 'package:modarb_app/features/onboarding/ui/screens/fitness_location.dart';
import 'package:modarb_app/features/onboarding/ui/screens/height_and_weight.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../smart_trainer/ui/screens/smart_trainer.dart';
import '../../../smart_trainer/ui/screens/trainer_before_register.dart';
import 'fitness_equipment.dart';
import 'gender_and_age.dart';

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
            children:  [
              const FitnessGoal(),
              const GenderAndAge(),
              const HeightAndWeight(),
              SmartTrainer(bmiResult: context.read<RegisterCubit>().calculateBMI()),
              const FitnessLevel(),
              const FitnessLocation(),
              const FitnessEquipment(),
              const FitnessInjury(),
              const TrainerBeforeRegister(),
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
                if (_validateCurrentPage(context, index)){
                  fitnessController.nextPage(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    curve: Curves.decelerate,
                  );
                  if(index == 8){
                    context.pushNamed(Routes.register);
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  bool _validateCurrentPage(BuildContext context, int index) {
    final cubit = context.read<RegisterCubit>();

    switch (index) {
      case 0:
        if (cubit.selectedGoal == null) {
          _showValidationMessage(context, 'Please select a fitness goal');
          return false;
        }
        break;
      case 1:
        if (cubit.selectedGender == null || cubit.selectedDateString == null) {
          _showValidationMessage(context, 'Please select your gender and age');
          return false;
        }
        break;
      case 2:
        if (cubit.rulerOfHeight == null || cubit.rulerOfWeight == null) {
          _showValidationMessage(context, 'Please enter your height and weight');
          return false;
        }
        break;
        case 4:
        if (cubit.selectedLevel == null ) {
          _showValidationMessage(context, 'Please enter your level');
          return false;
        }
        break;
        case 5:
        if (cubit.selectedLocation == null ) {
          _showValidationMessage(context, 'Please enter your location');
          return false;
        }
        break;
        case 6:
        if (cubit.selectedEquipments == null ) {
          _showValidationMessage(context, 'Please enter your equipment');
          return false;
        }
        break;
        case 7:
        if (cubit.selectedInjuries == null ) {
          _showValidationMessage(context, 'Please enter your Injuries');
          return false;
        }
        break;
      default:
        break;
    }

    return true;
  }

  void _showValidationMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

