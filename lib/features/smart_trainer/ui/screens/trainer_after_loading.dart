import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/container_of_message.dart';

class TrainerAfterLoading extends StatelessWidget{
  const TrainerAfterLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 20.h),
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
                    text: 'Congratulations, Sarah 🎉 here\'s Your Roadmap to Wellness',
                  ),
                  verticalSpace(20),
                  const ContainerOfMessage(
                    text: 'Let\'s achieve your health and wellness goals together!',
                  ),
                  verticalSpace(200),
                  AppTextButton(
                    buttonText: 'Finish',
                    onPressed: (){
                      context.pushNamed(Routes.homePage);
                    },
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
