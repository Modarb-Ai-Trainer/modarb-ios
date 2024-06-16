
class MyMealPlan {
  MyMealPlan({
    required this.id,
    required this.today,
  });

  final String? id;
  final Today? today;

  factory MyMealPlan.fromJson(Map<String, dynamic> json){
    return MyMealPlan(
      id: json["id"],
      today: json["today"] == null ? null : Today.fromJson(json["today"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "today": today?.toJson(),
  };

}

class Today {
  Today({
    required this.numberOfMeals,
    required this.numberOfSnacks,
    required this.totalCalories,
  });

  final int? numberOfMeals;
  final int? numberOfSnacks;
  final double? totalCalories;

  factory Today.fromJson(Map<String, dynamic> json){
    return Today(
      numberOfMeals: json["numberOfMeals"],
      numberOfSnacks: json["numberOfSnacks"],
      totalCalories: json["totalCalories"],
    );
  }

  Map<String, dynamic> toJson() => {
    "numberOfMeals": numberOfMeals,
    "numberOfSnacks": numberOfSnacks,
    "totalCalories": totalCalories,
  };

}

