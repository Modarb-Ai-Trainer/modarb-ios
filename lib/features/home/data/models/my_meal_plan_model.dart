class MyMealPlan {
  MyMealPlan({required this.json});
  final Map<String,dynamic> json;

  factory MyMealPlan.fromJson(Map<String, dynamic> json){
    return MyMealPlan(
        json: json
    );
  }

  Map<String, dynamic> toJson() => {
  };

}
