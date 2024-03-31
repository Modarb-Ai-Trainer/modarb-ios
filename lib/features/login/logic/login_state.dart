

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modarb_app/core/networking/api_error_handler.dart';

part 'login_state.freezed.dart';

@freezed

class LoginState<T> with _$LoginState<T> {

  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error(NetworkExceptions networkExceptions) = Error;

  const factory LoginState.toggleObscureText(bool isObscureText) = ToggleObscureText;




}