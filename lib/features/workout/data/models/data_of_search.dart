import 'package:modarb_app/features/my_trainer/data/models/expected_duration_range.dart';
import 'package:modarb_app/features/my_trainer/data/models/media.dart';
import 'package:modarb_app/features/my_trainer/data/models/target_muscles.dart';
import 'package:modarb_app/features/workout/data/models/equipment_of_search.dart';

class DataOfSearch {
  DataOfSearch({
    required this.id,
    required this.name,
    required this.category,
    required this.exerciseType,
    required this.duration,
    required this.expectedDurationRange,
    required this.reps,
    required this.sets,
    required this.instructions,
    required this.benefits,
    required this.targetMuscles,
    required this.equipments,
    required this.coverImage,
    required this.media,
  });

  final String? id;
  final String? name;
  final String? category;
  final String? exerciseType;
  final int? duration;
  final ExpectedDurationRange? expectedDurationRange;
  final int? reps;
  final int? sets;
  final String? instructions;
  final String? benefits;
  final TargetMuscles? targetMuscles;
  final List<EquipmentOfSearch> equipments;
  final String? coverImage;
  final Media? media;

  factory DataOfSearch.fromJson(Map<String, dynamic> json){
    return DataOfSearch(
      id: json["id"],
      name: json["name"],
      category: json["category"],
      exerciseType: json["exerciseType"],
      duration: json["duration"],
      expectedDurationRange: json["expectedDurationRange"] == null ? null : ExpectedDurationRange.fromJson(json["expectedDurationRange"]),
      reps: json["reps"],
      sets: json["sets"],
      instructions: json["instructions"],
      benefits: json["benefits"],
      targetMuscles: json["targetMuscles"] == null ? null : TargetMuscles.fromJson(json["targetMuscles"]),
      equipments: json["equipments"] == null ? [] : List<EquipmentOfSearch>.from(json["equipments"]!.map((x) => EquipmentOfSearch.fromJson(x))),
      coverImage: json["coverImage"],
      media: json["media"] == null ? null : Media.fromJson(json["media"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category": category,
    "exerciseType": exerciseType,
    "duration": duration,
    "expectedDurationRange": expectedDurationRange?.toJson(),
    "reps": reps,
    "sets": sets,
    "instructions": instructions,
    "benefits": benefits,
    "targetMuscles": targetMuscles?.toJson(),
    "equipments": equipments.map((x) => x.toJson()).toList(),
    "coverImage": coverImage,
    "media": media?.toJson(),
  };

}
