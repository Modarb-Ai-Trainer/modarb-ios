class TemplateRequestBody{
  final String name;
  final  String user;
  final List<String> exercises;

      TemplateRequestBody({
        required this.user,
        required this.name,
        required this.exercises,
  });

  factory TemplateRequestBody.fromJson(Map<String, dynamic> json){
    return TemplateRequestBody(
      name: json["name"],
      user: json["user"],
      exercises: json["exercises"] == null ? [] : List<String>.from(json["exercises"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "user": user,
    "exercises": exercises.map((x) => x).toList(),
  };


}