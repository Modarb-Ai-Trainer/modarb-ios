
import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';

class WorkoutResponse {
  WorkoutResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final DataModel? data;

  factory WorkoutResponse.fromJson(Map<String, dynamic> json){
    return WorkoutResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? null : DataModel.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };

}

class DataModel{
  DataModel({
    required this.id,
    required this.user,
    required this.workout,
    required this.isActive,
    required this.weeks,
  });

  final String? id;
  final String? user;
  final Workout? workout;
  final bool? isActive;
  final List<Week> weeks;

  factory DataModel.fromJson(Map<String, dynamic> json){
    return DataModel(
      id: json["id"],
      user: json["user"],
      workout: json["workout"] == null ? null : Workout.fromJson(json["workout"]),
      isActive: json["is_active"],
      weeks: json["weeks"] == null ? [] : List<Week>.from(json["weeks"]!.map((x) => Week.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user,
    "workout": workout?.toJson(),
    "is_active": isActive,
    "weeks": weeks.map((x) => x.toJson()).toList(),
  };

}

class Workout {
  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.image,
    required this.createdBy,
    required this.fitnessLevel,
    required this.fitnessGoal,
    required this.place,
    required this.minPerDay,
    required this.totalNumberDays,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? type;
  final String? image;
  final String? createdBy;
  final String? fitnessLevel;
  final String? fitnessGoal;
  final List<String> place;
  final int? minPerDay;
  final int? totalNumberDays;

  factory Workout.fromJson(Map<String, dynamic> json){
    return Workout(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      type: json["type"],
      image: json["image"],
      createdBy: json["created_by"],
      fitnessLevel: json["fitness_level"],
      fitnessGoal: json["fitness_goal"],
      place: json["place"] == null ? [] : List<String>.from(json["place"]!.map((x) => x)),
      minPerDay: json["min_per_day"],
      totalNumberDays: json["total_number_days"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "type": type,
    "image": image,
    "created_by": createdBy,
    "fitness_level": fitnessLevel,
    "fitness_goal": fitnessGoal,
    "place": place.map((x) => x).toList(),
    "min_per_day": minPerDay,
    "total_number_days": totalNumberDays,
  };

}


class Week {
  Week({
    required this.weekNumber,
    required this.weekName,
    required this.weekDescription,
    required this.days,
    required this.isDone,
  });

  final int? weekNumber;
  final String? weekName;
  final String? weekDescription;
  final List<Day> days;
  final bool? isDone;

  factory Week.fromJson(Map<String, dynamic> json){
    return Week(
      weekNumber: json["week_number"],
      weekName: json["week_name"],
      weekDescription: json["week_description"],
      days: json["days"] == null ? [] : List<Day>.from(json["days"]!.map((x) => Day.fromJson(x))),
      isDone: json["is_done"],
    );
  }

  Map<String, dynamic> toJson() => {
    "week_number": weekNumber,
    "week_name": weekName,
    "week_description": weekDescription,
    "days": days.map((x) => x.toJson()).toList(),
    "is_done": isDone,
  };

}


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
