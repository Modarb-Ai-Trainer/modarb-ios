import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';

class Day {
  Day({
    required this.dayNumber,
    required this.totalNumberExercises,
    required this.dayType,
    required this.exercises,
    required this.isDone,
  });

  final int? dayNumber;
  final int? totalNumberExercises;
  final String? dayType;
  final List<Exercise> exercises;
  final bool? isDone;

  factory Day.fromJson(Map<String, dynamic> json){
    return Day(
      dayNumber: json["day_number"],
      totalNumberExercises: json["total_number_exercises"],
      dayType: json["day_type"],
      exercises: json["exercises"] == null ? [] : List<Exercise>.from(json["exercises"]!.map((x) => Exercise.fromJson(x))),
      isDone: json["is_done"],
    );
  }

  Map<String, dynamic> toJson() => {
    "day_number": dayNumber,
    "total_number_exercises": totalNumberExercises,
    "day_type": dayType,
    "exercises": exercises.map((x) => x.toJson()).toList(),
    "is_done": isDone,
  };

}
