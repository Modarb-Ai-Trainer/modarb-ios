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
import 'package:modarb_app/core/networking/api_error_handler.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.registerLoading() = RegisterLoading;
  const factory RegisterState.registerSuccess(T data) = RegisterSuccess<T>;
  const factory RegisterState.registerError(NetworkExceptions networkExceptions) = RegisterError;
  const factory RegisterState.toggleObscureText(bool isObscureText) = ToggleObscureText;


  const factory RegisterState.goalSelected(String selectedGoal) = GoalSelected;
  const factory RegisterState.genderSelected(String gender) = GenderSelected;
  const factory RegisterState.dateOfBirthChangeSuccess({required DateTime currentDate}) = DateOfBirthChangeSuccess;
  const factory RegisterState.rulerOfHeightChangeSuccess({required num currentValue}) = RulerOfHeightChangeSuccess;
  const factory RegisterState.rulerOfWeightChangeSuccess({required num currentValue}) = RulerOfWeightChangeSuccess;
  const factory RegisterState.rulerOfTargetWeightChangeSuccess({required num currentValue}) = RulerOfTargetWeightChangeSuccess;
  const factory RegisterState.levelSelected(String selectedLevel) = LevelSelected;
  const factory RegisterState.locationSelected(String selectedLocation) = LocationSelected;
  const factory RegisterState.equipmentSelected(String selectedEquipments ) = EquipmentSelected;
  const factory RegisterState.injurySelected(String selectedInjury) = InjurySelected;


}