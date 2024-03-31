// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBody _$RegisterRequestBodyFromJson(Map<String, dynamic> json) =>
    RegisterRequestBody(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      gender: json['gender'] as String,
      height: json['height'] as int,
      weight: (json['weight'] as num).toDouble(),
      fitnessLevel: json['fitness_level'] as String,
      preferences: json['preferences'] == null
          ? null
          : PreferencesModel.fromJson(
              json['preferences'] as Map<String, dynamic>),
      injuries:
          (json['injuries'] as List<dynamic>).map((e) => e as String).toList(),
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$RegisterRequestBodyToJson(
        RegisterRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'gender': instance.gender,
      'height': instance.height,
      'weight': instance.weight,
      'fitness_level': instance.fitnessLevel,
      'preferences': instance.preferences,
      'injuries': instance.injuries,
      'dob': instance.dob,
    };

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) =>
    PreferencesModel(
      workoutFrequency: json['workout_frequency'] as int?,
      preferredDays: (json['preferred_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fitnessGoal: json['fitness_goal'] as String,
      targetWeight: json['target_weight'] as int,
      workoutPlace: json['workout_place'] as String,
      preferredEquipment: (json['preferred_equipment'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PreferencesModelToJson(PreferencesModel instance) =>
    <String, dynamic>{
      'fitness_goal': instance.fitnessGoal,
      'target_weight': instance.targetWeight,
      'workout_frequency': instance.workoutFrequency,
      'preferred_days': instance.preferredDays,
      'workout_place': instance.workoutPlace,
      'preferred_equipment': instance.preferredEquipment,
    };
