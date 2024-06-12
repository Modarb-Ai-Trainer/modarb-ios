import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/core/helper/constant.dart';
import 'package:modarb_app/core/networking/dio_factory.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';

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

      String? userToken = loginResponse?.data?.token;
      if (userToken != null) {
        await saveUserToken(userToken);

      }

      emit(LoginState.success(loginResponse!));
    } catch(error){
      print(error.toString());
      emit(const LoginState.error());

    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
