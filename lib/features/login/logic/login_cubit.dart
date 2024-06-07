import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/networking/cache_helper.dart';
import 'package:modarb_app/features/login/data/models/login_request_body.dart';
import 'package:modarb_app/features/login/data/models/login_response.dart';
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
  //   {
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
  //   }
  // }

  LoginResponse ?loginResponse;
  void emitLoginStates() async {
    emit(const LoginState.loading());
    try {
      loginResponse = await _loginRepository.loginUser(
        LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
      );

      final userToken = loginResponse?.data?.token;
      if (userToken != null) {
        await CacheHelper.saveData(key: 'userToken', value: userToken);
      }

      emit(LoginState.success(loginResponse!));
    } catch(error){
      print(error.toString());
      emit(const LoginState.error());

    }
  }
}
