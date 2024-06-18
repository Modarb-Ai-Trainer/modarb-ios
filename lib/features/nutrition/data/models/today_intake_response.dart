class TodayIntakeResponse {
  TodayIntakeResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory TodayIntakeResponse.fromJson(Map<String, dynamic> json){
    return TodayIntakeResponse(
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
    required this.caloriesGoal,
    required this.caloriesLeft,
    required this.caloriesBurned,
    required this.carbsGoal,
    required this.carbsConsumed,
    required this.proteinGoal,
    required this.proteinConsumed,
    required this.fatGoal,
    required this.fatConsumed,
  });

  final int? caloriesGoal;
  final int? caloriesLeft;
  final int? caloriesBurned;
  final int? carbsGoal;
  final int? carbsConsumed;
  final int? proteinGoal;
  final int? proteinConsumed;
  final int? fatGoal;
  final int? fatConsumed;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      caloriesGoal: json["caloriesGoal"],
      caloriesLeft: json["caloriesLeft"],
      caloriesBurned: json["caloriesBurned"],
      carbsGoal: json["carbsGoal"],
      carbsConsumed: json["carbsConsumed"],
      proteinGoal: json["proteinGoal"],
      proteinConsumed: json["proteinConsumed"],
      fatGoal: json["fatGoal"],
      fatConsumed: json["fatConsumed"],
    );
  }

  Map<String, dynamic> toJson() => {
    "caloriesGoal": caloriesGoal,
    "caloriesLeft": caloriesLeft,
    "caloriesBurned": caloriesBurned,
    "carbsGoal": carbsGoal,
    "carbsConsumed": carbsConsumed,
    "proteinGoal": proteinGoal,
    "proteinConsumed": proteinConsumed,
    "fatGoal": fatGoal,
    "fatConsumed": fatConsumed,
  };

}
