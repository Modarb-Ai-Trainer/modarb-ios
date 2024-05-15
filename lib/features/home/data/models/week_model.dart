import 'package:modarb_app/features/home/data/models/day_model.dart';

class Week {
  Week({
    required this.weekNumber,
    required this.isDone,
    required this.days,
  });

  final int? weekNumber;
  final bool? isDone;
  final List<Day> days;

  factory Week.fromJson(Map<String, dynamic> json){
    return Week(
      weekNumber: json["week_number"],
      isDone: json["is_done"],
      days: json["days"] == null ? [] : List<Day>.from(json["days"]!.map((x) => Day.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "week_number": weekNumber,
    "is_done": isDone,
    "days": days.map((x) => x.toJson()).toList(),
  };

}