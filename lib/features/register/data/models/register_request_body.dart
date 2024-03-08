import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String gender;
  final int height;
  final double weight;
  @JsonKey(name: 'fitness_level')
  final String fitnessLevel;
  final PreferencesModel? preferences;
  final List<String> injuries;
  final String ? dob;


  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.gender,
    required this.height,
    required this.weight,
    required this.fitnessLevel,
    this.preferences,
    required this.injuries,
    this.dob,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);

}


@JsonSerializable()
class PreferencesModel {

  @JsonKey(name: 'fitness_goal')
  final String fitnessGoal;
  @JsonKey(name: 'target_weight')
  final int targetWeight;
  @JsonKey(name: 'workout_frequency')
  final int workoutFrequency;
  @JsonKey(name: 'preferred_days')
  final List<String> ? preferredDays;
  @JsonKey(name: 'workout_place')
  final String workoutPlace;
  @JsonKey(name: 'preferred_equipment')
  final List<String> preferredEquipment;



  PreferencesModel({
    required this.fitnessGoal,
    required this.targetWeight,
    required this.workoutFrequency,
    this.preferredDays,
    required this.workoutPlace,
    required this.preferredEquipment
  });

  Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);

}