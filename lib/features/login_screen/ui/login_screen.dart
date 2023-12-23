import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/widgets/app_text_button.dart';
import 'package:modarb_app/features/login_screen/ui/widgets/text_and_bottom_sheet.dart';
import 'package:modarb_app/features/login_screen/ui/widgets/horizontal_line.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/welcome_and_image.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const WelcomeAndImage(),
        Text(
          'Your Personal Fitness Journey\nBegins',
          textAlign: TextAlign.center,
          style: TextStyles.font16White700.copyWith(
            height: 1.4,
            decoration: TextDecoration.none,
          ),
        ),
        Positioned(
          bottom: 200.h,
          right: 15.h,
          left: 15.h,
          child: AppTextButton(
            buttonText: 'Start',
            textStyle: TextStyles.font20White600,
            onPressed: () {
              context.pushNamed(Routes.onBoardingScreen);
            },
          ),
        ),
        Positioned(
          bottom: 120.h,
          right: 15.h,
          left: 15.h,
          child: const HorizontalLine(
            text: 'Already a user ?',
            height: 10,
          ),
         ),
        Positioned(
          bottom: 90.h,
          right: 60.h,
          left: 85.h,
          child: const TextAndBottomSheet(),
        ),
      ],
    );
  }
}
