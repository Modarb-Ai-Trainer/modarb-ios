import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:modarb_app/features/register/logic/register_state.dart';
import '../data/models/register_request_body.dart';
import '../data/repos/register_repo.dart';


class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  RulerPickerController rulerOfHeight = RulerPickerController();
  RulerPickerController rulerOfWeight = RulerPickerController();
  RulerPickerController rulerOfTargetWeight = RulerPickerController();
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  double currentHeight = 100 ;
  double currentWeight = 10 ;
  double currentTargetWeight = 10 ;
  int selectedAge = 0;
  String selectedGoal = '';
  String selectedGender = '';
  String selectedLevel = '';
  String selectedLocation = '';
  List<bool> checkedEquipments = List.generate(5, (index) => false);
  List<bool> checkedInjuries = List.generate(5, (index) => false);
  List<String> selectedEquipments = [];
  List<String> selectedInjuries = [];




  List<RulerRange> rangesOfHeight = const [
    RulerRange(begin: 100, end: 300, scale: 1),
  ];

  List<RulerRange> rangesOfWeight = const [
    RulerRange(begin: 10, end: 200, scale: 0.1),

  ];

  void onSelectedGoal(String goal) {
    emit(RegisterState.goalSelected(goal));
    selectedGoal = goal;
    print(selectedGoal);
  }

  void onGenderChange(String gender) {
    emit(RegisterState.genderSelected(gender));
    selectedGender = gender;
  }

  void onAgeChange(int value) {
    final updatedAge = value + 1;
    emit(RegisterState.ageChangeSuccess(currentValue: updatedAge));
    selectedAge = updatedAge;
    print(selectedAge);
  }

  void onHeightRulerChange(num value) {
    emit(RegisterState.rulerOfHeightChangeSuccess(currentValue: value));
    rulerOfHeight = RulerPickerController(value: value);
    currentHeight = value.toDouble();

  }

  void onWeightRulerChange(num value) {
    emit(RegisterState.rulerOfWeightChangeSuccess(currentValue: value));
    rulerOfWeight = RulerPickerController(value: value);
    currentWeight = value.toDouble();

  }

  void onTargetWeightRulerChange(num value) {
    emit(RegisterState.rulerOfTargetWeightChangeSuccess(currentValue: value));
    rulerOfTargetWeight = RulerPickerController(value: value);
    currentTargetWeight = value.toDouble();
  }

  double calculateBMI() {

    double weight = currentWeight;
    double height = currentHeight ;
    // Convert height from cm to meters
    double heightInMeters = height / 100.0;

    // Calculate BMI
    double bmi = weight / (heightInMeters * heightInMeters);
    // Round to two decimal places
    double result = double.parse(bmi.toStringAsFixed(2));


    return result;
  }

  void onSelectedLevel(String level) {
    emit(RegisterState.levelSelected(level));
    selectedLevel = level;
    print(selectedLevel);
  }

  void onSelectedLocation(String location) {
    emit(RegisterState.locationSelected(location));
    selectedLocation = location;
    print(selectedLocation);
  }

  void onSelectedEquipment(String equipment, bool isSelected, int index) {

    checkedEquipments[index] = isSelected;

    // Update the selectedEquipments list based on the checkbox state
    if (isSelected && !selectedEquipments.contains(equipment)) {
      selectedEquipments.add(equipment);
    } else if (!isSelected && selectedEquipments.contains(equipment)) {
      selectedEquipments.remove(equipment);
    }
    emit(RegisterState.equipmentSelected(equipment));
    print(selectedEquipments);
  }

  void onSelectedInjury(String injury, bool isSelected, int index) {

    checkedInjuries[index] = isSelected;

    // Update the selectedEquipments list based on the checkbox state
    if (isSelected && !selectedInjuries.contains(injury)) {
      selectedInjuries.add(injury);
    } else if (!isSelected && selectedInjuries.contains(injury)) {
      selectedInjuries.remove(injury);
    }
    emit(RegisterState.injurySelected(injury));
    print(selectedInjuries);
  }


  void emitRegisterStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: selectedGender,
        height: rulerOfHeight.value.toInt(),
        weight: rulerOfWeight.value.toDouble(),
        age: selectedAge,
        fitnessLevel: selectedLevel,
        injuries:selectedInjuries,
        preferences: PreferencesModel(
          fitnessGoal: selectedGoal,
          workoutPlace: selectedLocation,
          preferredEquipment: selectedEquipments,
          targetWeight: currentTargetWeight.toInt(),
          workoutFrequency: 0,
          preferredDays: [],
        ),
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







