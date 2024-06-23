// import 'package:json_annotation/json_annotation.dart';
// part 'register_request_body.g.dart';
//
// @JsonSerializable()
// class RegisterRequestBody {
//   final String name;
//   final String email;
//   final String password;
//   final String confirmPassword;
//   final String gender;
//   final int height;
//   final double weight;
//   @JsonKey(name: 'fitness_level')
//   final String fitnessLevel;
//   final PreferencesModel? preferences;
//   final List<String> injuries;
//   final String ? dob;
//
//
//   RegisterRequestBody({
//     required this.name,
//     required this.email,
//     required this.password,
//     required this.confirmPassword,
//     required this.gender,
//     required this.height,
//     required this.weight,
//     required this.fitnessLevel,
//     this.preferences,
//     required this.injuries,
//     this.dob,
//   });
//
//   Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
//
// }
//
//
// @JsonSerializable()
// class PreferencesModel {
//
//   @JsonKey(name: 'fitness_goal')
//   final String fitnessGoal;
//   @JsonKey(name: 'target_weight')
//   final int targetWeight;
//   @JsonKey(name: 'workout_frequency')
//   final int? workoutFrequency;
//   @JsonKey(name: 'preferred_days')
//   final List<String>? preferredDays;
//   @JsonKey(name: 'workout_place')
//   final String workoutPlace;
//   @JsonKey(name: 'preferred_equipment')
//   final List<String> preferredEquipment;
//
//
//
//   PreferencesModel({
//     this.workoutFrequency,
//     this.preferredDays,
//     required this.fitnessGoal,
//     required this.targetWeight,
//     required this.workoutPlace,
//     required this.preferredEquipment
//
//   });
//
//   Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);
//
//   factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
//       _$PreferencesModelFromJson(json);
//
// }

class RegisterRequestBody {
  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    // required this.image,
    required this.gender,
    required this.height,
    required this.weight,
    required this.fitnessLevel,
    required this.preferences,
    required this.injuries,
    required this.dob,
    required this.role,
  });

  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;
  // final ImageModel? image;
  final String? gender;
  final int? height;
  final int? weight;
  final String? fitnessLevel;
  final PreferencesModel? preferences;
  final List<String> injuries;
  final String? dob;
  final String? role;

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json){
    return RegisterRequestBody(
      name: json["name"],
      email: json["email"],
      password: json["password"],
      confirmPassword: json["confirmPassword"],
      // image: json["image"] == null ? null : ImageModel.fromJson(json["image"]),
      gender: json["gender"],
      height: json["height"],
      weight: json["weight"],
      fitnessLevel: json["fitness_level"],
      preferences: json["preferences"] == null ? null : PreferencesModel.fromJson(json["preferences"]),
      injuries: json["injuries"] == null ? [] : List<String>.from(json["injuries"]!.map((x) => x)),
      dob: json["dob"],
      role: json["role"],
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
    "confirmPassword": confirmPassword,
    // "image": image?.toJson(),
    "gender": gender,
    "height": height,
    "weight": weight,
    "fitness_level": fitnessLevel,
    "preferences": preferences?.toJson(),
    "injuries": injuries.map((x) => x).toList(),
    "dob": dob,
    "role": role,
  };

}

class ImageModel {
  ImageModel({
    required this.url,
    required this.publicId,
  });

  final String? url;
  final String? publicId;

  factory ImageModel.fromJson(Map<String, dynamic> json){
    return ImageModel(
      url: json["url"],
      publicId: json["public_id"],
    );
  }

  Map<String, dynamic> toJson() => {
    "url": url,
    "public_id": publicId,
  };

}

class PreferencesModel {
  PreferencesModel({
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

  factory PreferencesModel.fromJson(Map<String, dynamic> json){
    return PreferencesModel(
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
