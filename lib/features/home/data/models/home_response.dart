

import 'package:json_annotation/json_annotation.dart';
import 'package:modarb_app/features/home/data/models/my_meal_plan.dart';
import 'package:modarb_app/features/home/data/models/my_workout_model.dart';
import 'package:modarb_app/features/home/data/models/user_model.dart';
part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  final int? status;
  final String? message;
  final Data? data;

  HomeResponse({
    required this.status,
    required this.message,
    required this.data,
  });



  factory HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);

}



@JsonSerializable()
class Data {
  final User? user;
  final MyWorkout? myWorkout;
  final MyMealPlan? myMealPlan;

  Data({
    required this.user,
    required this.myWorkout,
    required this.myMealPlan,
  });



  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}