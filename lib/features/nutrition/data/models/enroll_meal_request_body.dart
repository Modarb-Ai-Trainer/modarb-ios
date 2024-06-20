class EnrollMealRequestBody {
  EnrollMealRequestBody({
    required this.ingredients,
  });

  final List<Ingredientt> ingredients;

  factory EnrollMealRequestBody.fromJson(Map<String, dynamic> json){
    return EnrollMealRequestBody(
      ingredients: json["ingredients"] == null ? [] : List<Ingredientt>.from(json["ingredients"]!.map((x) => Ingredientt.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "ingredients": ingredients.map((x) => x.toJson()).toList(),
  };

}

class Ingredientt {
  Ingredientt({
    required this.id,
    required this.noServings,
  });

  final String? id;
  final int? noServings;

  factory Ingredientt.fromJson(Map<String, dynamic> json){
    return Ingredientt(
      id: json["id"],
      noServings: json["noServings"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "noServings": noServings,
  };

}

