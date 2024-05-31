import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/extension.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    final token = cubit.loginResponse?.data?.token;
    final name = cubit.loginResponse?.data?.user?.name;
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
            setupSuccessState(context, token,name);
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

  void setupSuccessState(BuildContext context,token,name){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login successfully $name',
            style: TextStyles.font16White700,
          ),
          backgroundColor: ColorsManager.lighterGray,
          duration: const Duration(seconds: 3),
        ),
    );

    // if(token != null){
    //   ScaffoldMessenger.of(context).showSnackBar(
    //
    //   );
    // }else{
    //   print('mooooo');
    // }
    context.pop();
    context.pushNamed(Routes.homePage);

  }
}