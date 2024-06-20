import 'package:modarb_app/features/nutrition/data/models/ingredients_response.dart';

class IngredientsSearchResponse {
  IngredientsSearchResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<Datum> data;
  final Meta? meta;

  factory IngredientsSearchResponse.fromJson(Map<String, dynamic> json){
    return IngredientsSearchResponse(
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
