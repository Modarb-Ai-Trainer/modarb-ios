import 'package:modarb_app/features/my_trainer/data/models/week_model.dart';
import 'package:modarb_app/features/my_trainer/data/models/workout.dart';

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
