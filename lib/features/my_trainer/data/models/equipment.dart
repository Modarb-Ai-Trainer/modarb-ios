class Equipment {
  Equipment({
    required this.id,
    required this.name,
    required this.image,
    required this.v,
  });

  final String? id;
  final String? name;
  final String? image;
  final int? v;

  factory Equipment.fromJson(Map<String, dynamic> json){
    return Equipment(
      id: json["_id"],
      name: json["name"],
      image: json["image"],
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "image": image,
    "__v": v,
  };

}
