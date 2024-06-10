
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

class Equipment {
  Equipment({
    required this.id,
    required this.name,
    required this.image,
    required this.v,
  });

  final String? id;
  final String? name;
  final String? image;
  final int? v;

  factory Equipment.fromJson(Map<String, dynamic> json){
    return Equipment(
      id: json["_id"],
      name: json["name"],
      image: json["image"],
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "image": image,
    "__v": v,
  };

}

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

class ExpectedDurationRange {
  ExpectedDurationRange({
    required this.min,
    required this.max,
  });

  final int? min;
  final int? max;

  factory ExpectedDurationRange.fromJson(Map<String, dynamic> json){
    return ExpectedDurationRange(
      min: json["min"],
      max: json["max"],
    );
  }

  Map<String, dynamic> toJson() => {
    "min": min,
    "max": max,
  };

}

class Media {
  Media({
    required this.type,
    required this.url,
  });

  final String? type;
  final String? url;

  factory Media.fromJson(Map<String, dynamic> json){
    return Media(
      type: json["type"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
    "type": type,
    "url": url,
  };

}


