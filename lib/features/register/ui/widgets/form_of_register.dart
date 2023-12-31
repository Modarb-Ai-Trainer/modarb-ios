import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class FormOfRegister extends StatefulWidget{
   const FormOfRegister({Key? key}) : super(key: key);

  @override
  State<FormOfRegister> createState() => _FormOfRegisterState();
}

class _FormOfRegisterState extends State<FormOfRegister> {
  final formKey = GlobalKey<FormState>();
   bool isObscureText = true;

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.h),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.lighterGray,
          borderRadius: BorderRadius.circular(40.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              offset: Offset(0, 5),
              spreadRadius: 0,

            )
          ],
        ),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.h),
            child: Column(
              children: [
                AppTextFormField(
                  hintText: 'Name',
                  backgroundColor:  ColorsManager.lighterGray,
                  validator: (value){ },

                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Email',
                  backgroundColor:  ColorsManager.lighterGray,
                  validator: (value){},
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Password',
                  backgroundColor:  ColorsManager.lighterGray,
                  isObscureText: isObscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(
                      isObscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  validator: (value){},
                ),
                verticalSpace(10.h),
                AppTextFormField(
                  hintText: 'Confirm Password',
                  backgroundColor:  ColorsManager.lighterGray,
                  isObscureText: isObscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    child: Icon(
                      isObscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  validator: (value){},
                ),
                verticalSpace(40.h),
                AppTextButton(
                  buttonText: 'Register',
                  textStyle: TextStyles.font20Purple600,
                  backgroundColor: Colors.white.withOpacity(0.9),
                  onPressed: () {
                    context.pushNamed(Routes.trainerAfterRegister);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
