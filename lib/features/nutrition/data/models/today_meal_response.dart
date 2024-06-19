class TodayMealResponse {
  TodayMealResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory TodayMealResponse.fromJson(Map<String, dynamic> json){
    return TodayMealResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };

}

class Data {
  Data({
    required this.id,
    required this.user,
    required this.mealPlan,
    required this.isActive,
    required this.days,
  });

  final String? id;
  final String? user;
  final MealPlan? mealPlan;
  final bool? isActive;
  final List<Day> days;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      id: json["id"],
      user: json["user"],
      mealPlan: json["meal_plan"] == null ? null : MealPlan.fromJson(json["meal_plan"]),
      isActive: json["isActive"],
      days: json["days"] == null ? [] : List<Day>.from(json["days"]!.map((x) => Day.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user,
    "meal_plan": mealPlan?.toJson(),
    "isActive": isActive,
    "days": days.map((x) => x.toJson()).toList(),
  };

}

class Day {
  Day({
    required this.dayNumber,
    required this.meals,
    required this.isEaten,
  });

  final int? dayNumber;
  final List<Meal> meals;
  final bool? isEaten;

  factory Day.fromJson(Map<String, dynamic> json){
    return Day(
      dayNumber: json["day_number"],
      meals: json["meals"] == null ? [] : List<Meal>.from(json["meals"]!.map((x) => Meal.fromJson(x))),
      isEaten: json["is_eaten"],
    );
  }

  Map<String, dynamic> toJson() => {
    "day_number": dayNumber,
    "meals": meals.map((x) => x.toJson()).toList(),
    "is_eaten": isEaten,
  };

}

class Meal {
  Meal({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.image,
    required this.ingredients,
    required this.calories,
    required this.carbs,
    required this.proteins,
    required this.fats,
    required this.type,
  });

  final String? id;
  final String? name;
  final DateTime? createdAt;
  final String? image;
  final List<Ingredient> ingredients;
  final double? calories;
  final double? carbs;
  final double? proteins;
  final double? fats;
  final String? type;

  factory Meal.fromJson(Map<String, dynamic> json){
    return Meal(
      id: json["id"],
      name: json["name"],
      createdAt: DateTime.tryParse(json["created_at"] ?? ""),
      image: json["image"],
      ingredients: json["ingredients"] == null ? [] : List<Ingredient>.from(json["ingredients"]!.map((x) => Ingredient.fromJson(x))),
      calories: json["calories"],
      carbs: json["carbs"],
      proteins: json["proteins"],
      fats: json["fats"],
      type: json["type"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "created_at": createdAt?.toIso8601String(),
    "image": image,
    "ingredients": ingredients.map((x) => x.toJson()).toList(),
    "calories": calories,
    "carbs": carbs,
    "proteins": proteins,
    "fats": fats,
    "type": type,
  };

}

class Ingredient {
  Ingredient({
    required this.id,
    required this.name,
    required this.servingSize,
    required this.servingsCount,
    required this.servingSizeUnit,
    required this.servingsCountUnit,
    required this.calories,
    required this.carbs,
    required this.proteins,
    required this.fats,
  });

  final String? id;
  final String? name;
  final int? servingSize;
  final int? servingsCount;
  final String? servingSizeUnit;
  final String? servingsCountUnit;
  final int? calories;
  final int? carbs;
  final int? proteins;
  final int? fats;

  factory Ingredient.fromJson(Map<String, dynamic> json){
    return Ingredient(
      id: json["id"],
      name: json["name"],
      servingSize: json["serving_size"],
      servingsCount: json["servings_count"],
      servingSizeUnit: json["serving_size_unit"],
      servingsCountUnit: json["servings_count_unit"],
      calories: json["calories"],
      carbs: json["carbs"],
      proteins: json["proteins"],
      fats: json["fats"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "serving_size": servingSize,
    "servings_count": servingsCount,
    "serving_size_unit": servingSizeUnit,
    "servings_count_unit": servingsCountUnit,
    "calories": calories,
    "carbs": carbs,
    "proteins": proteins,
    "fats": fats,
  };

}

class MealPlan {
  MealPlan({
    required this.id,
    required this.image,
    required this.description,
    required this.duration,
    required this.level,
    required this.yourJourney,
    required this.keyFeatures,
    required this.aiGenerated,
    required this.isDeleted,
    required this.v,
  });

  final String? id;
  final String? image;
  final String? description;
  final int? duration;
  final String? level;
  final String? yourJourney;
  final List<KeyFeature> keyFeatures;
  final bool? aiGenerated;
  final bool? isDeleted;
  final int? v;

  factory MealPlan.fromJson(Map<String, dynamic> json){
    return MealPlan(
      id: json["_id"],
      image: json["image"],
      description: json["description"],
      duration: json["duration"],
      level: json["level"],
      yourJourney: json["your_journey"],
      keyFeatures: json["key_features"] == null ? [] : List<KeyFeature>.from(json["key_features"]!.map((x) => KeyFeature.fromJson(x))),
      aiGenerated: json["aiGenerated"],
      isDeleted: json["isDeleted"],
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
    "description": description,
    "duration": duration,
    "level": level,
    "your_journey": yourJourney,
    "key_features": keyFeatures.map((x) => x.toJson()).toList(),
    "aiGenerated": aiGenerated,
    "isDeleted": isDeleted,
    "__v": v,
  };

}

class KeyFeature {
  KeyFeature({
    required this.title,
    required this.description,
    required this.id,
  });

  final String? title;
  final String? description;
  final String? id;

  factory KeyFeature.fromJson(Map<String, dynamic> json){
    return KeyFeature(
      title: json["title"],
      description: json["description"],
      id: json["_id"],
    );
  }

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "_id": id,
  };

}
