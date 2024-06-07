import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/networking/cache_helper.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    final token = CacheHelper.getData(key: 'userToken');
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
      current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainPurple,
                ),
              ),
            );
          },
          success: (loginResponse) {
            setupSuccessState(context, token);
          },
          error: () {
            setupErrorState(context);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          'Login failed. Please try again',
          style: TextStyles.font16White700,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font16White700,
            ),
          ),
        ],
      ),
    );
  }

  void setupSuccessState(BuildContext context,token){

    if(token != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login successfully',
            style: TextStyles.font16White700,
          ),
          backgroundColor: ColorsManager.lighterGray,
          duration: const Duration(seconds: 3),
        ),
      );
      context.pop();
      context.pushNamed(Routes.homePage);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Something Went Wrong',
            style: TextStyles.font16White700,
          ),
          backgroundColor: ColorsManager.lighterGray,
          duration: const Duration(seconds: 3),
        ),
      );
    }


  }
}