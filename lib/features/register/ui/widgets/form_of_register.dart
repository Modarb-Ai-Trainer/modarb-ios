import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class FormOfRegister extends StatelessWidget{
   const FormOfRegister({super.key});

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
           key: context.read<RegisterCubit>().formKey,
           child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.h),
             child: Column(
               children: [
                 AppTextFormField(
                   hintText: 'Name',
                   backgroundColor:  ColorsManager.lighterGray,
                   controller: context.read<RegisterCubit>().nameController,
                   validator: (value){
                     if(value!.isEmpty){
                       return 'Name mustn\'t be empty';
                     }
                   },

                 ),
                 verticalSpace(10.h),
                 AppTextFormField(
                   hintText: 'Email',
                   backgroundColor:  ColorsManager.lighterGray,
                    controller: context.read<RegisterCubit>().emailController,
                   validator: (value){
                     if(value!.isEmpty){
                       return 'Email mustn\'t be empty';
                     }
                   },
                 ),
                 verticalSpace(10.h),
                 AppTextFormField(
                   hintText: 'Password',
                   backgroundColor:  ColorsManager.lighterGray,
                   // isObscureText: cubit.isObscureText,
                    controller: context.read<RegisterCubit>().passwordController,
                   suffixIcon: GestureDetector(
                     onTap: () {
                       context.read<RegisterCubit>().isObscureText = !context.read<RegisterCubit>().isObscureText;
                     },
                     child: Icon(
                       context.read<RegisterCubit>().isObscureText ? Icons.visibility_off : Icons.visibility,
                     ),
                   ),
                   validator: (value){
                     if(value!.isEmpty){
                       return 'Password mustn\'t be empty';
                     }
                   },
                 ),
                 verticalSpace(10.h),
                 AppTextFormField(
                   hintText: 'Confirm Password',
                   backgroundColor:  ColorsManager.lighterGray,
                   controller: context.read<RegisterCubit>().confirmPasswordController,
                   isObscureText: context.read<RegisterCubit>().isObscureText,
                   suffixIcon: GestureDetector(
                     onTap: () {
                       context.read<RegisterCubit>().isObscureText = !context.read<RegisterCubit>().isObscureText;
                     },
                     child: Icon(
                       context.read<RegisterCubit>().isObscureText ? Icons.visibility_off : Icons.visibility,
                     ),
                   ),
                   validator: (value){
                     if(value!.isEmpty){
                       return 'Confirm Password mustn\'t be empty';
                     }
                   },
                 ),
                 verticalSpace(40.h),
                 AppTextButton(
                   buttonText: 'Register',
                   textStyle: TextStyles.font20Purple600,
                   backgroundColor: Colors.white.withOpacity(0.9),
                   onPressed: () {
                     validateThenDoSignup(context);
                   },
                 ),
               ],
             ),
           ),
         ),
       ),
     );

   }
   void validateThenDoSignup(BuildContext context) {
     if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
       context.read<RegisterCubit>().emitRegisterStates();
     }
   }

}
