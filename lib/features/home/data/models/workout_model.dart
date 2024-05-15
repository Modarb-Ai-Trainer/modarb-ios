class Workout {
  Workout({
    required this.id,
    required this.name,
    required this.minPerDay,
  });

  final String? id;
  final String? name;
  final int? minPerDay;

  factory Workout.fromJson(Map<String, dynamic> json){
    return Workout(
      id: json["id"],
      name: json["name"],
      minPerDay: json["min_per_day"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "min_per_day": minPerDay,
  };

}
