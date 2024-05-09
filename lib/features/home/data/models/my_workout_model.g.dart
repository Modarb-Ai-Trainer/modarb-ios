// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyWorkout _$MyWorkoutFromJson(Map<String, dynamic> json) => MyWorkout(
      id: json['id'] as String?,
      workout: json['workout'] == null
          ? null
          : Workout.fromJson(json['workout'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool?,
      weeks: (json['weeks'] as List<dynamic>?)
          ?.map((e) => Week.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyWorkoutToJson(MyWorkout instance) => <String, dynamic>{
      'id': instance.id,
      'workout': instance.workout,
      'is_active': instance.isActive,
      'weeks': instance.weeks,
    };

Workout _$WorkoutFromJson(Map<String, dynamic> json) => Workout(
      id: json['id'] as String?,
      name: json['name'] as String?,
      minPerDay: json['min_per_day'] as int?,
    );

Map<String, dynamic> _$WorkoutToJson(Workout instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min_per_day': instance.minPerDay,
    };

Week _$WeekFromJson(Map<String, dynamic> json) => Week(
      weekNumber: json['week_number'] as int?,
      isDone: json['is_done'] as bool?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeekToJson(Week instance) => <String, dynamic>{
      'week_number': instance.weekNumber,
      'is_done': instance.isDone,
      'days': instance.days,
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      dayNumber: json['day_number'] as int?,
      totalNumberExercises: json['total_number_exercises'] as int?,
      dayType: json['day_type'] as String?,
      isDone: json['is_done'] as bool?,
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'day_number': instance.dayNumber,
      'total_number_exercises': instance.totalNumberExercises,
      'day_type': instance.dayType,
      'is_done': instance.isDone,
    };
