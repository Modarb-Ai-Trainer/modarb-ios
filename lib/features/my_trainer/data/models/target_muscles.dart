import 'package:modarb_app/features/my_trainer/data/models/equipment.dart';

class TargetMuscles {
  TargetMuscles({
    required this.primary,
    required this.secondary,
  });

  final Equipment? primary;
  final Equipment? secondary;

  factory TargetMuscles.fromJson(Map<String, dynamic> json){
    return TargetMuscles(
      primary: json["primary"] == null ? null : Equipment.fromJson(json["primary"]),
      secondary: json["secondary"] == null ? null : Equipment.fromJson(json["secondary"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "primary": primary?.toJson(),
    "secondary": secondary?.toJson(),
  };

}
