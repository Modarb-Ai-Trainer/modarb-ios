class WorkoutProgramResponse {
  WorkoutProgramResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<Datum> data;
  final Meta? meta;

  factory WorkoutProgramResponse.fromJson(Map<String, dynamic> json){
    return WorkoutProgramResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.map((x) => x.toJson()).toList(),
    "meta": meta?.toJson(),
  };

}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.image,
    required this.fitnessLevel,
    required this.fitnessGoal,
    required this.place,
    required this.minPerDay,
    required this.totalNumberDays,
    required this.templateWeeks,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? type;
  final String? image;
  final String? fitnessLevel;
  final String? fitnessGoal;
  final List<String> place;
  final int? minPerDay;
  final int? totalNumberDays;
  final List<TemplateWeek> templateWeeks;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      type: json["type"],
      image: json["image"],
      fitnessLevel: json["fitness_level"],
      fitnessGoal: json["fitness_goal"],
      place: json["place"] == null ? [] : List<String>.from(json["place"]!.map((x) => x)),
      minPerDay: json["min_per_day"],
      totalNumberDays: json["total_number_days"],
      templateWeeks: json["template_weeks"] == null ? [] : List<TemplateWeek>.from(json["template_weeks"]!.map((x) => TemplateWeek.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "type": type,
    "image": image,
    "fitness_level": fitnessLevel,
    "fitness_goal": fitnessGoal,
    "place": place.map((x) => x).toList(),
    "min_per_day": minPerDay,
    "total_number_days": totalNumberDays,
    "template_weeks": templateWeeks.map((x) => x.toJson()).toList(),
  };

}

class TemplateWeek {
  TemplateWeek({
    required this.weekNumber,
    required this.weekName,
    required this.weekDescription,
    required this.days,
  });

  final int? weekNumber;
  final String? weekName;
  final String? weekDescription;
  final List<Day> days;

  factory TemplateWeek.fromJson(Map<String, dynamic> json){
    return TemplateWeek(
      weekNumber: json["week_number"],
      weekName: json["week_name"],
      weekDescription: json["week_description"],
      days: json["days"] == null ? [] : List<Day>.from(json["days"]!.map((x) => Day.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "week_number": weekNumber,
    "week_name": weekName,
    "week_description": weekDescription,
    "days": days.map((x) => x.toJson()).toList(),
  };

}

class Day {
  Day({
    required this.dayNumber,
    required this.totalNumberExercises,
    required this.dayType,
    required this.exercises,
  });

  final int? dayNumber;
  final int? totalNumberExercises;
  final String? dayType;
  final List<String> exercises;

  factory Day.fromJson(Map<String, dynamic> json){
    return Day(
      dayNumber: json["day_number"],
      totalNumberExercises: json["total_number_exercises"],
      dayType: json["day_type"],
      exercises: json["exercises"] == null ? [] : List<String>.from(json["exercises"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "day_number": dayNumber,
    "total_number_exercises": totalNumberExercises,
    "day_type": dayType,
    "exercises": exercises.map((x) => x).toList(),
  };

}

class Meta {
  Meta({
    required this.total,
    required this.page,
    required this.perPage,
  });

  final int? total;
  final int? page;
  final int? perPage;

  factory Meta.fromJson(Map<String, dynamic> json){
    return Meta(
      total: json["total"],
      page: json["page"],
      perPage: json["perPage"],
    );
  }

  Map<String, dynamic> toJson() => {
    "total": total,
    "page": page,
    "perPage": perPage,
  };

}
