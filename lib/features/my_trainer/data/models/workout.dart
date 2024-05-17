class Workout {
  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.image,
    required this.createdBy,
    required this.fitnessLevel,
    required this.fitnessGoal,
    required this.place,
    required this.minPerDay,
    required this.totalNumberDays,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? type;
  final String? image;
  final String? createdBy;
  final String? fitnessLevel;
  final String? fitnessGoal;
  final List<String> place;
  final int? minPerDay;
  final int? totalNumberDays;

  factory Workout.fromJson(Map<String, dynamic> json){
    return Workout(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      type: json["type"],
      image: json["image"],
      createdBy: json["created_by"],
      fitnessLevel: json["fitness_level"],
      fitnessGoal: json["fitness_goal"],
      place: json["place"] == null ? [] : List<String>.from(json["place"]!.map((x) => x)),
      minPerDay: json["min_per_day"],
      totalNumberDays: json["total_number_days"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "type": type,
    "image": image,
    "created_by": createdBy,
    "fitness_level": fitnessLevel,
    "fitness_goal": fitnessGoal,
    "place": place.map((x) => x).toList(),
    "min_per_day": minPerDay,
    "total_number_days": totalNumberDays,
  };

}
