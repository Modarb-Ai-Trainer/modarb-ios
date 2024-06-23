// import 'package:json_annotation/json_annotation.dart';
// part 'register_response.g.dart';
//
// @JsonSerializable()
// class RegisterResponse {
//   String? message;
//   @JsonKey(name: 'data')
//   UserData? userData;
//   bool? status;
//   int? code;
//
//   RegisterResponse({this.message, this.userData, this.status, this.code});
//
//   factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
//       _$RegisterResponseFromJson(json);
// }
//
// @JsonSerializable()
// class UserData {
//   String? token;
//   @JsonKey(name: 'username')
//   String? userName;
//
//   UserData({this.token, this.userName});
//
//   factory UserData.fromJson(Map<String, dynamic> json) =>
//       _$UserDataFromJson(json);
// }

class RegisterResponse {
  RegisterResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  final Data? data;
  final String? message;
  final int? status;

  factory RegisterResponse.fromJson(Map<String, dynamic> json){
    return RegisterResponse(
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
    required this.name,
    required this.email,
    required this.image,
    required this.role,
    required this.gender,
    required this.age,
    required this.height,
    required this.weight,
    required this.fitnessLevel,
    required this.preferences,
    required this.injuries,
  });

  final String? id;
  final String? name;
  final String? email;
  final String? image;
  final String? role;
  final String? gender;
  final int? age;
  final int? height;
  final int? weight;
  final String? fitnessLevel;
  final Preferences? preferences;
  final List<dynamic> injuries;

  // final Injuries? injuries;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      image: json["image"],
      role: json["role"],
      gender: json["gender"],
      age: json["age"],
      height: json["height"],
      weight: json["weight"],
      fitnessLevel: json["fitness_level"],
      preferences: json["preferences"] == null ? null : Preferences.fromJson(json["preferences"]),
      injuries: json['injuries'] ?? [],

      // injuries: json["injuries"] == null ? null : Injuries.fromJson(json["injuries"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "image": image,
    "role": role,
    "gender": gender,
    "age": age,
    "height": height,
    "weight": weight,
    "fitness_level": fitnessLevel,
    "preferences": preferences?.toJson(),
    'injuries': injuries,


    // "injuries": injuries.toJson(),
  };

}

// class Injuries {
//   Injuries({required this.json});
//   final Map<String,dynamic> json;
//
//   factory Injuries.fromJson(Map<String, dynamic> json){
//     return Injuries(
//         json: json
//     );
//   }
//
//   Map<String, dynamic> toJson() => {
//   };
//
// }

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
      preferredDays: List<String>.from(json['preferred_days'] ?? []),

      // preferredDays: json["preferred_days"] == null ? null : Injuries.fromJson(json["preferred_days"]),
      workoutPlace: json["workout_place"],
      preferredEquipment: List<String>.from(json['preferred_equipment'] ?? []),

      // preferredEquipment: json["preferred_equipment"] == null ? null : Injuries.fromJson(json["preferred_equipment"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "fitness_goal": fitnessGoal,
    "target_weight": targetWeight,
    "workout_frequency": workoutFrequency,
    "preferred_days": preferredDays,
    "workout_place": workoutPlace,
    'preferred_equipment': preferredEquipment,
  };

}
