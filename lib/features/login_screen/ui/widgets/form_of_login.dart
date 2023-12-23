import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class FormOfLogin extends StatelessWidget{
   FormOfLogin({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 44.h,vertical: 60.h ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              AppTextFormField(
                hintText: 'Email',
                validator: (value){ },
              ),
              verticalSpace(20.h),
              AppTextFormField(
                hintText: 'Password',
                validator: (value){},
              ),
              verticalSpace(50.h),
              AppTextButton(
                buttonText: 'Login',
                textStyle: TextStyles.font20White600,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
