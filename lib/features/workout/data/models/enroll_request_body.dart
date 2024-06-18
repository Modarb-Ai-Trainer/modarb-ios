class EnrollRequestBody {
  EnrollRequestBody({
    required this.workout,
  });

  final String? workout;

  factory EnrollRequestBody.fromJson(Map<String, dynamic> json){
    return EnrollRequestBody(
      workout: json["workout"],
    );
  }

  Map<String, dynamic> toJson() => {
    "workout": workout,
  };

}
