import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/login/logic/login_cubit.dart';
import 'package:modarb_app/features/login/logic/login_state.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'form_of_login.dart';

class TextAndBottomSheet extends StatelessWidget{
  const TextAndBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit,LoginState>(
      builder: (context , state){
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
              builder: (context){
                return const FormOfLogin();
              },
            );
          },
        );
      },
    );
  }
}
