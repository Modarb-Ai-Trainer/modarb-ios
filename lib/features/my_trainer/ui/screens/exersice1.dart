import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/spacing.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';

class Exercise extends StatelessWidget{
  const Exercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/warming.png',
          scale: .8,
        ),
        Text(
          'Jumping Jacks',
          style: TextStyles.font19White700,
        ),
        verticalSpace(20),
        Text(
            '00:30 ',
          style: TextStyles.font28White700.copyWith(
            color: ColorsManager.lightPurple,
          ),
        ),
      ],
    );
  }
}
