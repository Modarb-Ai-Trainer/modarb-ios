import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/login/data/models/login_request_body.dart';
import 'package:modarb_app/features/login/data/repos/login_repo.dart';
import 'package:modarb_app/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());


  final formKey = GlobalKey<FormState>();
  bool isObscureText = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void toggleObscureText() {
    isObscureText = !isObscureText;
    emit(LoginState.toggleObscureText(isObscureText));
  }


  // void emitLoginStates() async {
  //   emit(const LoginState.loading());
  //   try {
  //     final response = await _loginRepository.login(
  //       LoginRequestBody(
  //         email: emailController.text,
  //         password: passwordController.text,
  //       ),
  //     );
  //     response.when(success: (loginResponse) {
  //       emit(LoginState.success(loginResponse));
  //     }, failure: (error) {
  //       emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
  //     });
  //   } catch (e) {
  //     emit(const LoginState.error(error: 'Something went wrong'));
  //   }
  // }
  void emitLoginStates() async {
    emit(const LoginState.loading());
    try {
      final response = await _loginRepository.login(
        LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      response.when(
        success: (loginResponse) {
          emit(LoginState.success(loginResponse)); // Emit success state with the response
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message ?? '')); // Emit error state with the error message
        },
      );
    } catch (e) {
      emit(const LoginState.error(error: 'Something went wrong')); // Emit error state for other exceptions
    }
  }


}

