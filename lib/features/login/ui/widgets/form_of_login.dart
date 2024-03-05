import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/features/login/logic/login_cubit.dart';
import 'package:modarb_app/features/login/logic/login_state.dart';
import 'package:modarb_app/features/login/ui/widgets/login_bloc_listener.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class FormOfLogin extends StatelessWidget{
   const FormOfLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit,LoginState>(
      builder: (context, state){
        final cubit = context.read<LoginCubit>();
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
          child: Form(
            key: cubit.formKey,
            child: Column(
              children: [
                AppTextFormField(
                  hintText: 'Email',
                  backgroundColor: Colors.transparent,
                  controller: context.read<LoginCubit>().emailController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Email mustn\'t be empty';
                    }
                  },
                ),
                verticalSpace(20.h),
                AppTextFormField(
                  hintText: 'Password',
                  backgroundColor: Colors.transparent,
                  controller: context.read<LoginCubit>().passwordController,
                  isObscureText: context.watch<LoginCubit>().isObscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      context.read<LoginCubit>().toggleObscureText();
                    },
                    child: Icon(
                      context.watch<LoginCubit>().isObscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Password mustn\'t be empty';
                    }
                  },
                ),
                verticalSpace(50.h),
                AppTextButton(
                  buttonText: 'Login',
                  textStyle: TextStyles.font20White600,
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        );
      },
    );
  }

   void validateThenDoLogin(BuildContext context) {
     if (context.read<LoginCubit>().formKey.currentState!.validate()) {
       context.read<LoginCubit>().emitLoginStates();
     }
   }
}
