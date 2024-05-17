import 'package:modarb_app/features/my_trainer/data/models/equipment.dart';
import 'package:modarb_app/features/my_trainer/data/models/expected_duration_range.dart';
import 'package:modarb_app/features/my_trainer/data/models/media.dart';
import 'package:modarb_app/features/my_trainer/data/models/target_muscles.dart';

class Exercise {
  Exercise({
    required this.expectedDurationRange,
    required this.targetMuscles,
    required this.media,
    required this.id,
    required this.name,
    required this.category,
    required this.duration,
    required this.reps,
    required this.sets,
    required this.instructions,
    required this.benefits,
    required this.equipments,
    required this.v,
  });

  final ExpectedDurationRange? expectedDurationRange;
  final TargetMuscles? targetMuscles;
  final Media? media;
  final String? id;
  final String? name;
  final String? category;
  final int? duration;
  final int? reps;
  final int? sets;
  final String? instructions;
  final String? benefits;
  final List<Equipment> equipments;
  final int? v;

  factory Exercise.fromJson(Map<String, dynamic> json){
    return Exercise(
      expectedDurationRange: json["expectedDurationRange"] == null ? null : ExpectedDurationRange.fromJson(json["expectedDurationRange"]),
      targetMuscles: json["targetMuscles"] == null ? null : TargetMuscles.fromJson(json["targetMuscles"]),
      media: json["media"] == null ? null : Media.fromJson(json["media"]),
      id: json["_id"],
      name: json["name"],
      category: json["category"],
      duration: json["duration"],
      reps: json["reps"],
      sets: json["sets"],
      instructions: json["instructions"],
      benefits: json["benefits"],
      equipments: json["equipments"] == null ? [] : List<Equipment>.from(json["equipments"]!.map((x) => Equipment.fromJson(x))),
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
    "expectedDurationRange": expectedDurationRange?.toJson(),
    "targetMuscles": targetMuscles?.toJson(),
    "media": media?.toJson(),
    "_id": id,
    "name": name,
    "category": category,
    "duration": duration,
    "reps": reps,
    "sets": sets,
    "instructions": instructions,
    "benefits": benefits,
    "equipments": equipments.map((x) => x.toJson()).toList(),
    "__v": v,
  };

}
