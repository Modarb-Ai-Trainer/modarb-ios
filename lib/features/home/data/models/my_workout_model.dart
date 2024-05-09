import 'package:json_annotation/json_annotation.dart';
part 'my_workout_model.g.dart';

@JsonSerializable()
class MyWorkout {
  MyWorkout({
    required this.id,
    required this.workout,
    required this.isActive,
    required this.weeks,
  });

  final String? id;
  final Workout? workout;

  @JsonKey(name: 'is_active')
  final bool? isActive;
  final List<Week>? weeks;

  factory MyWorkout.fromJson(Map<String, dynamic> json) => _$MyWorkoutFromJson(json);

  Map<String, dynamic> toJson() => _$MyWorkoutToJson(this);

}

@JsonSerializable()
class Workout {
  Workout({
    required this.id,
    required this.name,
    required this.minPerDay,
  });

  final String? id;
  final String? name;

  @JsonKey(name: 'min_per_day')
  final int? minPerDay;

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutToJson(this);

}


@JsonSerializable()
class Week {
  Week({
    required this.weekNumber,
    required this.isDone,
    required this.days,
  });

  @JsonKey(name: 'week_number')
  final int? weekNumber;

  @JsonKey(name: 'is_done')
  final bool? isDone;
  final List<Day>? days;

  factory Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);

  Map<String, dynamic> toJson() => _$WeekToJson(this);

}

@JsonSerializable()
class Day {
  Day({
    required this.dayNumber,
    required this.totalNumberExercises,
    required this.dayType,
    required this.isDone,
  });

  @JsonKey(name: 'day_number')
  final int? dayNumber;

  @JsonKey(name: 'total_number_exercises')
  final int? totalNumberExercises;

  @JsonKey(name: 'day_type')
  final String? dayType;

  @JsonKey(name: 'is_done')
  final bool? isDone;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);

}
