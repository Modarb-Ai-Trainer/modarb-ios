import 'package:flutter/material.dart';
import 'package:modarb_app/core/helper/extension.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RowOfSkip extends StatelessWidget{
  const RowOfSkip({Key? key, required this.boardController}) : super(key: key);

  final PageController boardController ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: (){
            boardController.previousPage(
              duration: const Duration(
                seconds: 1,
              ),
              curve: Curves.decelerate,
            );

          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsManager.mainWhite,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: (){
            context.pushReplacementNamed(Routes.fitnessChoice);
          },
          child: Text(
            'Skip',
            style: TextStyles.font13White700,
          ),
        ),
      ],
    );
  }
}
