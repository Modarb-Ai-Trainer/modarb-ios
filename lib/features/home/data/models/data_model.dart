import 'package:modarb_app/features/home/data/models/my_meal_plan_model.dart';
import 'package:modarb_app/features/home/data/models/my_workout_model.dart';
import 'package:modarb_app/features/home/data/models/user_data_model.dart';

class DataModel {
  DataModel({
    required this.user,
    required this.myWorkout,
    required this.myMealPlan,
  });

  final User? user;
  final MyWorkout? myWorkout;
  final MyMealPlan? myMealPlan;

  factory DataModel.fromJson(Map<String, dynamic> json){
    return DataModel(
      user: json["user"] == null ? null : User.fromJson(json["user"]),
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