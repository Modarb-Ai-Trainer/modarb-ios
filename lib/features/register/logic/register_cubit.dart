import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../data/models/register_request_body.dart';
import '../data/repos/register_repo.dart';

// class RegisterCubit extends Cubit<RegisterStates> {
//   RegisterCubit(this._registerRepo) : super(RegisterInitialState());
//
//   // static RegisterCubit get(context) => BlocProvider.of(context);
//
//   final formKey = GlobalKey<FormState>();
//   bool isObscureText = true;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController passwordConfirmController = TextEditingController();
//
//   // final RegisterRepo registerRepo;
//   // Future<void> emitRegisterUser() async {
//   //   emit(RegisterLoadingState());
//   //
//   //   try {
//   //     final response = await registerRepo.registerUser(
//   //       emailController.text,
//   //       nameController.text,
//   //       passwordController.text,
//   //       passwordConfirmController.text,
//   //     );
//   //     emit(RegisterSuccessState(response));
//   //
//   //   } catch (e) {
//   //     emit(RegisterErrorsState('Registration failed: $e'));
//   //   }
//   // }
//
// }


class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;


  void emitRegisterStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: genderController.text,
        height: double.parse(heightController.text),
        weight: double.parse(weightController.text),
        fitnessLevel: '',
        injuries: [],
        dob: '',
      ),
    );
    response.when(success: (signupResponse) {
      emit(RegisterState.registerSuccess(signupResponse));
    }, failure: (error) {
      emit(RegisterState.registerError(error: error.apiErrorModel.message ?? ''));
    });
  }
}