import 'package:json_annotation/json_annotation.dart';
part 'my_meal_plan.g.dart';
@JsonSerializable()
class MyMealPlan {
  var json;

  MyMealPlan({required this.json});

  factory MyMealPlan.fromJson(Map<String, dynamic> json) => _$MyMealPlanFromJson(json);

  Map<String, dynamic> toJson() => _$MyMealPlanToJson(this);

}
