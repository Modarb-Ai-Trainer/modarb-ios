// abstract class RegisterStates{}
//
// class RegisterInitialState extends RegisterStates {}
//
// class RegisterLoadingState extends RegisterStates {}
//
// class RegisterSuccessState extends RegisterStates
// {
//    final Map<String, dynamic> response;
//   RegisterSuccessState(this.response);
// }
//
// class RegisterErrorsState extends RegisterStates
// {
//   final String errorMessage;
//
//   RegisterErrorsState(this.errorMessage);
// }


import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.registerLoading() = RegisterLoading;
  const factory RegisterState.registerSuccess(T data) = RegisterSuccess<T>;
  const factory RegisterState.registerError({required String error}) = RegisterError;
}