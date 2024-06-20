class MealPlansResponse {
  MealPlansResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<Datu> data;
  final Meta? meta;

  factory MealPlansResponse.fromJson(Map<String, dynamic> json){
    return MealPlansResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<Datu>.from(json["data"]!.map((x) => Datu.fromJson(x))),
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

class Datu {
  Datu({
    required this.id,
    required this.image,
    required this.description,
    required this.duration,
    required this.level,
    required this.yourJourney,
    required this.keyFeatures,
  });

  final String? id;
  final String? image;
  final String? description;
  final int? duration;
  final String? level;
  final String? yourJourney;
  final List<KeyFeature> keyFeatures;

  factory Datu.fromJson(Map<String, dynamic> json){
    return Datu(
      id: json["id"],
      image: json["image"],
      description: json["description"],
      duration: json["duration"],
      level: json["level"],
      yourJourney: json["your_journey"],
      keyFeatures: json["key_features"] == null ? [] : List<KeyFeature>.from(json["key_features"]!.map((x) => KeyFeature.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "description": description,
    "duration": duration,
    "level": level,
    "your_journey": yourJourney,
    "key_features": keyFeatures.map((x) => x.toJson()).toList(),
  };

}

class KeyFeature {
  KeyFeature({
    required this.title,
    required this.description,
  });

  final String? title;
  final String? description;

  factory KeyFeature.fromJson(Map<String, dynamic> json){
    return KeyFeature(
      title: json["title"],
      description: json["description"],
    );
  }

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
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
