import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'form_of_login.dart';

class TextAndBottomSheet extends StatelessWidget{
  const TextAndBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        'continue with existing account',
        style: TextStyles.font13White600.copyWith(
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          decorationStyle: TextDecorationStyle.solid,
        ),
      ),
      onTap: () {
        showModalBottomSheet(
          backgroundColor: ColorsManager.darkGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          context: context,
          builder: (BuildContext context){
            return FormOfLogin();
          },
        );
      },
    );
  }
}
