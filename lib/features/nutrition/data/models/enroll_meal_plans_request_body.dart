class EnrollMealPlansRequestBody {
  EnrollMealPlansRequestBody({
    required this.mealPlan,
  });

  final String mealPlan;

  factory EnrollMealPlansRequestBody.fromJson(Map<String, dynamic> json){
    return EnrollMealPlansRequestBody(
      mealPlan: json["meal_plan"],
    );
  }

  Map<String, dynamic> toJson() => {
    "meal_plan": mealPlan,
  };

}
