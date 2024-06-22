class DailyGoalsResponse {
  DailyGoalsResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory DailyGoalsResponse.fromJson(Map<String, dynamic> json){
    return DailyGoalsResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };

}

class Data {
  Data({
    required this.waterGoal,
    required this.waterConsumed,
    required this.stepsGoal,
    required this.stepsDone,
    required this.exercisesCals,
    required this.exercisesHours,
    required this.sleepGoal,
    required this.sleepDone,
  });

  final num? waterGoal;
  final num? waterConsumed;
  final num? stepsGoal;
  final num? stepsDone;
  final num? exercisesCals;
  final num? exercisesHours;
  final num? sleepGoal;
  final num? sleepDone;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      waterGoal: json["waterGoal"],
      waterConsumed: json["waterConsumed"],
      stepsGoal: json["stepsGoal"],
      stepsDone: json["stepsDone"],
      exercisesCals: json["exercisesCals"],
      exercisesHours: json["exercisesHours"],
      sleepGoal: json["sleepGoal"],
      sleepDone: json["sleepDone"],
    );
  }

  Map<String, dynamic> toJson() => {
    "waterGoal": waterGoal,
    "waterConsumed": waterConsumed,
    "stepsGoal": stepsGoal,
    "stepsDone": stepsDone,
    "exercisesCals": exercisesCals,
    "exercisesHours": exercisesHours,
    "sleepGoal": sleepGoal,
    "sleepDone": sleepDone,
  };

}
