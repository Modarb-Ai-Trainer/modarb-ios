class TemplateResponse {
  TemplateResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  final Data? data;
  final String? message;
  final int? status;

  factory TemplateResponse.fromJson(Map<String, dynamic> json){
    return TemplateResponse(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
      message: json["message"],
      status: json["status"],
    );
  }

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status": status,
  };

}

class Data {
  Data({
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
  final List<String> exercises;

  factory Data.fromJson(Map<String, dynamic> json){
    return Data(
      id: json["id"],
      name: json["name"],
      user: json["user"],
      creationDate: json["creationDate"],
      exercises: json["exercises"] == null ? [] : List<String>.from(json["exercises"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "user": user,
    "creationDate": creationDate,
    "exercises": exercises.map((x) => x).toList(),
  };

}
