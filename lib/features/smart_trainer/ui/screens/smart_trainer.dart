import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import '../widgets/container_of_message.dart';

class SmartTrainer extends StatelessWidget{
  const SmartTrainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                    'assets/images/trainer.png',
                        scale: .8,
                ),
                verticalSpace(30),
                 const ContainerOfMessage(
                   text: 'Great news! 🎉  Your BMI is 21.48, which falls within a healthy range. Your goal of reaching 58 kg is within reach, and w\'re here to support you every step of the way!',
                  ),
                verticalSpace(20),
                const ContainerOfMessage(
                  text: ' Now, let\'s tailor your workouts to your fitness level and preferences.',
                ),
                verticalSpace(20),
                const ContainerOfMessage(
                  text: ' Your personalized journey awaits!',
                ),
              ],
            ),
          ),
        ),
      )

    );
  }
}
