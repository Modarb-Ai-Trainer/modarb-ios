class LoginResponse {
  LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory LoginResponse.fromJson(Map<String, dynamic> json){
    return LoginResponse(
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
    required this.user,
    required this.token,
  });

  final User? user;
  final String? token;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      user: json["user"] == null ? null : User.fromJson(json["user"]),
      token: json["token"],
    );
  }

  Map<String, dynamic> toJson() => {
    "user": user?.toJson(),
    "token": token,
  };

}


class User {
  User({
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
  final List<String> injuries;

  factory User.fromJson(Map<String, dynamic> json){
    return User(
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
      injuries: json["injuries"] == null ? [] : List<String>.from(json["injuries"]!.map((x) => x)),
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
    "injuries": injuries.map((x) => x).toList(),
  };

}
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
      preferredDays: json["preferred_days"] == null ? [] : List<String>.from(json["preferred_days"]!.map((x) => x)),
      workoutPlace: json["workout_place"],
      preferredEquipment: json["preferred_equipment"] == null ? [] : List<String>.from(json["preferred_equipment"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "fitness_goal": fitnessGoal,
    "target_weight": targetWeight,
    "workout_frequency": workoutFrequency,
    "preferred_days": preferredDays.map((x) => x).toList(),
    "workout_place": workoutPlace,
    "preferred_equipment": preferredEquipment.map((x) => x).toList(),
  };

}
