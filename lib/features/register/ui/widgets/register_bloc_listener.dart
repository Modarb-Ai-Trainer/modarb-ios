import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/features/register/logic/register_cubit.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';


class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<RegisterCubit>();
    return BlocListener<RegisterCubit,RegisterState>(
      listener: (context,state){
        if(state is RegisterLoading){
          showDialog(
            context: context,
            builder: (context) =>  const Center(
              child: CircularProgressIndicator(
                color: ColorsManager.mainPurple,
              ),
            ),
          );
        }else if(state is RegisterSuccess || cubit.registerResponse?.status == 200){
          showSuccessDialog(context);

        }else if (state is RegisterError || cubit.registerResponse?.status == 422){
          setupErrorState(context,cubit);
        }
      },
      child: const SizedBox.shrink(),
    // listenWhen: (previous, current) =>
    //   current is RegisterLoading || current is RegisterSuccess || current is RegisterError,
    //   listener: (context, state) {
    //     state.whenOrNull(
    //       registerLoading: () {
    //         showDialog(
    //           context: context,
    //           builder: (context) =>  const Center(
    //             child: CircularProgressIndicator(
    //               color: ColorsManager.mainPurple,
    //             ),
    //           ),
    //         );
    //       },
    //       registerSuccess: (registerResponse) {
    //         context.pop();
    //         showSuccessDialog(context);
    //       },
    //       registerError: () {
    //         setupErrorState(context,cubit);
    //       },
    //     );
    //   },
    //   child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Register successfully, go to login',
          style: TextStyles.font16White700,
        ),
        backgroundColor: ColorsManager.lighterGray,
        duration: const Duration(seconds: 5),
      ),
    );
    context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (Route<dynamic> route) => false);

  }

  void setupErrorState(BuildContext context,cubit) {
    final message = cubit.registerResponse?.message ?? 'An unknown error occurred';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyles.font16White700,
        ),
        backgroundColor: ColorsManager.lighterGray,
        duration: const Duration(seconds: 5),
      ),
    );
  }

}