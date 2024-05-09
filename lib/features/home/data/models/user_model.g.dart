// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      preferences: json['preferences'] == null
          ? null
          : Preferences.fromJson(json['preferences'] as Map<String, dynamic>),
      injuries: (json['injuries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'preferences': instance.preferences,
      'injuries': instance.injuries,
    };

Preferences _$PreferencesFromJson(Map<String, dynamic> json) => Preferences(
      fitnessGoal: json['fitness_goal'] as String?,
      targetWeight: json['target_weight'] as int?,
      workoutFrequency: json['workout_frequency'] as int?,
      preferredDays: (json['preferred_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workoutPlace: json['workout_place'] as String?,
      preferredEquipment: (json['preferred_equipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PreferencesToJson(Preferences instance) =>
    <String, dynamic>{
      'fitness_goal': instance.fitnessGoal,
      'target_weight': instance.targetWeight,
      'workout_frequency': instance.workoutFrequency,
      'preferred_days': instance.preferredDays,
      'workout_place': instance.workoutPlace,
      'preferred_equipment': instance.preferredEquipment,
    };
