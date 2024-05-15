import 'package:modarb_app/features/home/data/models/my_meal_plan_model.dart';
import 'package:modarb_app/features/home/data/models/my_workout_model.dart';

class Data {
  Data({
    required this.user,
    required this.myWorkout,
    required this.myMealPlan,
  });

  final Data? user;
  final MyWorkout? myWorkout;
  final MyMealPlan? myMealPlan;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      user: json["user"] == null ? null : Data.fromJson(json["user"]),
      myWorkout: json["myWorkout"] == null ? null : MyWorkout.fromJson(json["myWorkout"]),
      myMealPlan: json["myMealPlan"] == null ? null : MyMealPlan.fromJson(json["myMealPlan"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "user": user?.toJson(),
    "myWorkout": myWorkout?.toJson(),
    "myMealPlan": myMealPlan?.toJson(),
  };

}