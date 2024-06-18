class EnrollResponse {
  EnrollResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  final Data? data;
  final String? message;
  final int? status;

  factory EnrollResponse.fromJson(Map<String, dynamic> json){
    return EnrollResponse(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      message: json["message"],
      status: json["status"],
    );
  }

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status": status,
  };

}

class Data {
  Data({
    required this.id,
    required this.user,
    required this.workout,
    required this.isActive,
    required this.weeks,
  });

  final String? id;
  final String? user;
  final String? workout;
  final bool? isActive;
  final List<Week> weeks;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      id: json["id"],
      user: json["user"],
      workout: json["workout"],
      isActive: json["is_active"],
      weeks: json["weeks"] == null ? [] : List<Week>.from(json["weeks"]!.map((x) => Week.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user,
    "workout": workout,
    "is_active": isActive,
    "weeks": weeks.map((x) => x.toJson()).toList(),
  };

}

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
    "days": days.map((x) => x.toJson()).toList(),
    "is_done": isDone,
  };

}

class Day {
  Day({
    required this.dayNumber,
    required this.totalNumberExercises,
    required this.dayType,
    required this.exercises,
    required this.isDone,
  });

  final int? dayNumber;
  final int? totalNumberExercises;
  final String? dayType;
  final List<String> exercises;
  final bool? isDone;

  factory Day.fromJson(Map<String, dynamic> json){
    return Day(
      dayNumber: json["day_number"],
      totalNumberExercises: json["total_number_exercises"],
      dayType: json["day_type"],
      exercises: json["exercises"] == null ? [] : List<String>.from(json["exercises"]!.map((x) => x)),
      isDone: json["is_done"],
    );
  }

  Map<String, dynamic> toJson() => {
    "day_number": dayNumber,
    "total_number_exercises": totalNumberExercises,
    "day_type": dayType,
    "exercises": exercises.map((x) => x).toList(),
    "is_done": isDone,
  };

}
