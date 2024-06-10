import 'package:modarb_app/features/my_trainer/data/models/exercise.dart';

class AllExerciseResponse {
  AllExerciseResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<Data> data;
  final Meta? meta;

  factory AllExerciseResponse.fromJson(Map<String, dynamic> json){
    return AllExerciseResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<Data>.from(json["data"]!.map((x) => Data.fromJson(x))),
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

class Data {
  Data({
    required this.id,
    required this.name,
    required this.category,
    required this.exerciseType,
    required this.duration,
    required this.expectedDurationRange,
    required this.instructions,
    required this.benefits,
    required this.targetMuscles,
    required this.equipments,
    required this.coverImage,
    required this.media,
    required this.reps,
    required this.sets,
  });

  final String? id;
  final String? name;
  final String? category;
  final String? exerciseType;
  final int? duration;
  final ExpectedDurationRange? expectedDurationRange;
  final String? instructions;
  final String? benefits;
  final TargetMuscles? targetMuscles;
  final List<Equipment> equipments;
  final String? coverImage;
  final Media? media;
  final int? reps;
  final int? sets;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      id: json["id"],
      name: json["name"],
      category: json["category"],
      exerciseType: json["exerciseType"],
      duration: json["duration"],
      expectedDurationRange: json["expectedDurationRange"] == null ? null : ExpectedDurationRange.fromJson(json["expectedDurationRange"]),
      instructions: json["instructions"],
      benefits: json["benefits"],
      targetMuscles: json["targetMuscles"] == null ? null : TargetMuscles.fromJson(json["targetMuscles"]),
      equipments: json["equipments"] == null ? [] : List<Equipment>.from(json["equipments"]!.map((x) => Equipment.fromJson(x))),
      coverImage: json["coverImage"],
      media: json["media"] == null ? null : Media.fromJson(json["media"]),
      reps: json["reps"],
      sets: json["sets"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category": category,
    "exerciseType": exerciseType,
    "duration": duration,
    "expectedDurationRange": expectedDurationRange?.toJson(),
    "instructions": instructions,
    "benefits": benefits,
    "targetMuscles": targetMuscles?.toJson(),
    "equipments": equipments.map((x) => x.toJson()).toList(),
    "coverImage": coverImage,
    "media": media?.toJson(),
    "reps": reps,
    "sets": sets,
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
