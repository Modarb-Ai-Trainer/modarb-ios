class IngredientsResponse {
  IngredientsResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<Datum> data;
  final Meta? meta;

  factory IngredientsResponse.fromJson(Map<String, dynamic> json){
    return IngredientsResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
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

class Datum {
  Datum({
    required this.id,
    required this.name,
    required this.servingSize,
    required this.servingsCount,
    required this.servingSizeUnit,
    required this.servingsCountUnit,
    required this.calories,
    required this.carbs,
    required this.proteins,
    required this.fats,
  });

  final String? id;
  final String? name;
  final int? servingSize;
  final int? servingsCount;
  final String? servingSizeUnit;
  final String? servingsCountUnit;
  final int? calories;
  final int? carbs;
  final int? proteins;
  final int? fats;

  factory Datum.fromJson(Map<String, dynamic> json){
    return Datum(
      id: json["id"],
      name: json["name"],
      servingSize: json["serving_size"],
      servingsCount: json["servings_count"],
      servingSizeUnit: json["serving_size_unit"],
      servingsCountUnit: json["servings_count_unit"],
      calories: json["calories"],
      carbs: json["carbs"],
      proteins: json["proteins"],
      fats: json["fats"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "serving_size": servingSize,
    "servings_count": servingsCount,
    "serving_size_unit": servingSizeUnit,
    "servings_count_unit": servingsCountUnit,
    "calories": calories,
    "carbs": carbs,
    "proteins": proteins,
    "fats": fats,
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
