

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/features/login/data/models/login_response.dart';

part 'login_state.freezed.dart';

@freezed

class LoginState<T> with _$LoginState<T> {

  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = Loading;
  // const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.success(LoginResponse loginResponse) = Success;
  // const factory LoginState.error({required String error}) = Error;
  const factory LoginState.error() = Error;

  const factory LoginState.toggleObscureText(bool isObscureText) = ToggleObscureText;




}