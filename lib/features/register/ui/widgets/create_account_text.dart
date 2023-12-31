import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/helper/spacing.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class CreateAccountText extends StatelessWidget{
  const CreateAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: (){
                context.pushNamed(Routes.fitnessChoice);
              },
              icon: const Icon(Icons.arrow_back_sharp),
            ),
          ],
        ),
        verticalSpace(25),
        Text(
          'Create Your Account',
          style: TextStyles.font28White700,
        ),
        verticalSpace(10),
        Text(
          'Unlock a Personalized Fitness Experience',
          style: TextStyles.font13White400,
        ),
      ],
    );
  }
}
