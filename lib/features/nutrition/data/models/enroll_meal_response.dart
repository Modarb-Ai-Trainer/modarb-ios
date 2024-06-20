class EnrollMealResponse {
  EnrollMealResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  final int? status;
  final String? message;
  final dynamic data;

  factory EnrollMealResponse.fromJson(Map<String, dynamic> json){
    return EnrollMealResponse(
      status: json["status"],
      message: json["message"],
      data: json["data"],
    );
  }

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data,
  };

}
