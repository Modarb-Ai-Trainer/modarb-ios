class Preferences {
  Preferences({
    required this.fitnessGoal,
    required this.targetWeight,
    required this.workoutFrequency,
    required this.preferredDays,
    required this.workoutPlace,
    required this.preferredEquipment,
  });

  final String? fitnessGoal;
  final int? targetWeight;
  final int? workoutFrequency;
  final List<String> preferredDays;
  final String? workoutPlace;
  final List<String> preferredEquipment;

  factory Preferences.fromJson(Map<String, dynamic> json){
    return Preferences(
      fitnessGoal: json["fitness_goal"],
      targetWeight: json["target_weight"],
      workoutFrequency: json["workout_frequency"],
      preferredDays: json["preferred_days"] == null ? [] : List<String>.from(json["preferred_days"]!.map((x) => x)),
      workoutPlace: json["workout_place"],
      preferredEquipment: json["preferred_equipment"] == null ? [] : List<String>.from(json["preferred_equipment"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "fitness_goal": fitnessGoal,
    "target_weight": targetWeight,
    "workout_frequency": workoutFrequency,
    "preferred_days": preferredDays.map((x) => x).toList(),
    "workout_place": workoutPlace,
    "preferred_equipment": preferredEquipment.map((x) => x).toList(),
  };

}
