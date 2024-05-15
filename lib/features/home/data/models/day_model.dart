class Day {
  Day({
    required this.dayNumber,
    required this.totalNumberExercises,
    required this.dayType,
    required this.isDone,
  });

  final int? dayNumber;
  final int? totalNumberExercises;
  final String? dayType;
  final bool? isDone;

  factory Day.fromJson(Map<String, dynamic> json){
    return Day(
      dayNumber: json["day_number"],
      totalNumberExercises: json["total_number_exercises"],
      dayType: json["day_type"],
      isDone: json["is_done"],
    );
  }

  Map<String, dynamic> toJson() => {
    "day_number": dayNumber,
    "total_number_exercises": totalNumberExercises,
    "day_type": dayType,
    "is_done": isDone,
  };

}
