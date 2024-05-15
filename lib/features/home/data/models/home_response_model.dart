import 'package:modarb_app/features/home/data/models/data_model.dart';

class HomeResponse {
  HomeResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final Data? data;

  factory HomeResponse.fromJson(Map<String, dynamic> json){
    return HomeResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };

}
