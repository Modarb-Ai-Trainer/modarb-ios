import 'data_of_search.dart';
import 'meta.dart';

class SearchResponse {
  SearchResponse({
    required this.status,
    required this.message,
    required this.data,
    required this.meta,
  });

  final int? status;
  final String? message;
  final List<DataOfSearch> data;
  final Meta? meta;

  factory SearchResponse.fromJson(Map<String, dynamic> json){
    return SearchResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? [] : List<DataOfSearch>.from(json["data"]!.map((x) => DataOfSearch.fromJson(x))),
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
