import 'package:modarb_app/features/home/data/models/week_model.dart';
import 'package:modarb_app/features/home/data/models/workout_model.dart';

class MyWorkout {
  MyWorkout({
    required this.id,
    required this.workout,
    required this.isActive,
    required this.weeks,
  });

  final String? id;
  final Workout? workout;
  final bool? isActive;
  final List<Week> weeks;

  factory MyWorkout.fromJson(Map<String, dynamic> json){
    return MyWorkout(
      id: json["id"],
      workout: json["workout"] == null ? null : Workout.fromJson(json["workout"]),
      isActive: json["is_active"],
      weeks: json["weeks"] == null ? [] : List<Week>.from(json["weeks"]!.map((x) => Week.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "workout": workout?.toJson(),
    "is_active": isActive,
    "weeks": weeks.map((x) => x.toJson()).toList(),
  };

}