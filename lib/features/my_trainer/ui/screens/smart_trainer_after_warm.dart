import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/features/smart_trainer/ui/widgets/container_of_message.dart';

class SmartTrainerAfterWarm extends StatelessWidget{
  const SmartTrainerAfterWarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
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
                    text: 'Great job! Warm-up complete. Get ready for the main workout!',
                  ),
                  verticalSpace(20),
                  const ContainerOfMessage(
                    text: 'Your smart personal trainer is ready to guide you with real-time corrections for perfect form',
                  ),
                  verticalSpace(20),
                  const ContainerOfMessage(
                    text: ' Tap on my icon for guidance whenever you need it',
                  ),
                ],
              ),
            ),
          ),
        )

    );
  }
}
