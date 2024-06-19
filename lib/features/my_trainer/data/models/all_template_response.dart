class AllTemplateResponse {
  AllTemplateResponse({
    required this.data,
    required this.message,
    required this.status,
    required this.meta,
  });

  final List<Datum> data;
  final String? message;
  final int? status;
  final Meta? meta;

  factory AllTemplateResponse.fromJson(Map<String, dynamic> json){
    return AllTemplateResponse(
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      message: json["message"],
      status: json["status"],
      meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "data": data.map((x) => x.toJson()).toList(),
    "message": message,
    "status": status,
    "meta": meta?.toJson(),
  };

}

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.user,
    required this.creationDate,
    required this.exercises,
  });

  final String? id;
  final String? name;
  final String? user;
  final String? creationDate;
  final List<Exercise> exercises;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      id: json["id"],
      name: json["name"],
      user: json["user"],
      creationDate: json["creationDate"],
      exercises: json["exercises"] == null ? [] : List<Exercise>.from(json["exercises"]!.map((x) => Exercise.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "user": user,
    "creationDate": creationDate,
    "exercises": exercises.map((x) => x.toJson()).toList(),
  };

}

class Exercise {
  Exercise({
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
  final List<String> equipments;
  final String? coverImage;
  final Media? media;

  factory Exercise.fromJson(Map<String, dynamic> json){
    return Exercise(
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
      equipments: json["equipments"] == null ? [] : List<String>.from(json["equipments"]!.map((x) => x)),
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
    "equipments": equipments.map((x) => x).toList(),
    "coverImage": coverImage,
    "media": media?.toJson(),
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

class TargetMuscles {
  TargetMuscles({
    required this.primary,
    required this.secondary,
  });

  final String? primary;
  final String? secondary;

  factory TargetMuscles.fromJson(Map<String, dynamic> json){
    return TargetMuscles(
      primary: json["primary"],
      secondary: json["secondary"],
    );
  }

  Map<String, dynamic> toJson() => {
    "primary": primary,
    "secondary": secondary,
  };

}

class Meta {
  Meta({
    required this.total,
    required this.page,
    required this.limit,
  });

  final int? total;
  final int? page;
  final int? limit;

  factory Meta.fromJson(Map<String, dynamic> json){
    return Meta(
      total: json["total"],
      page: json["page"],
      limit: json["limit"],
    );
  }

  Map<String, dynamic> toJson() => {
    "total": total,
    "page": page,
    "limit": limit,
  };

}
