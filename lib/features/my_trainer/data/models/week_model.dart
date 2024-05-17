import 'package:modarb_app/features/my_trainer/data/models/day_model.dart';

class Week {
  Week({
    required this.weekNumber,
    required this.weekName,
    required this.weekDescription,
    required this.days,
    required this.isDone,
  });

  final int? weekNumber;
  final String? weekName;
  final String? weekDescription;
  final List<Day> days;
  final bool? isDone;

  factory Week.fromJson(Map<String, dynamic> json){
    return Week(
      weekNumber: json["week_number"],
      weekName: json["week_name"],
      weekDescription: json["week_description"],
      days: json["days"] == null ? [] : List<Day>.from(json["days"]!.map((x) => Day.fromJson(x))),
      isDone: json["is_done"],
    );
  }

  Map<String, dynamic> toJson() => {
    "week_number": weekNumber,
    "week_name": weekName,
    "week_description": weekDescription,
    "days": days.map((x) => x?.toJson()).toList(),
    "is_done": isDone,
  };

}
