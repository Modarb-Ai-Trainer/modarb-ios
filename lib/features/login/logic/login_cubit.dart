import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

// void login(String email, String password) async {
  //   emit(LoginLoading());
  //   try {
  //     final user = await loginRepository.login(email, password);
  //     emit(LoginSuccess(user));
  //   } on Exception catch (e) {
  //     emit(LoginFailed(e.toString()));
  //   }
  // }
}
