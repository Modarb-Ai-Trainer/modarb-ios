import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class User {
  final String? id;
  final String? name;
  final Preferences? preferences;
  final List<String>? injuries;

  User({
    required this.id,
    required this.name,
    required this.preferences,
    required this.injuries,
  });



  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

}


@JsonSerializable()
class Preferences {
  Preferences({
    required this.fitnessGoal,
    required this.targetWeight,
    required this.workoutFrequency,
    required this.preferredDays,
    required this.workoutPlace,
    required this.preferredEquipment,
  });

  @JsonKey(name: 'fitness_goal')
  final String? fitnessGoal;

  @JsonKey(name: 'target_weight')
  final int? targetWeight;

  @JsonKey(name: 'workout_frequency')
  final int? workoutFrequency;

  @JsonKey(name: 'preferred_days')
  final List<String>? preferredDays;

  @JsonKey(name: 'workout_place')
  final String? workoutPlace;

  @JsonKey(name: 'preferred_equipment')
  final List<String>? preferredEquipment;

  factory Preferences.fromJson(Map<String, dynamic> json) => _$PreferencesFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesToJson(this);

}
