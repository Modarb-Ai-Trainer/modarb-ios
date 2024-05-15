import 'package:modarb_app/features/home/data/models/preferences_model.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.preferences,
    required this.injuries,
  });

  final String? id;
  final String? name;
  final Preferences? preferences;
  final List<String> injuries;

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json["id"],
      name: json["name"],
      preferences: json["preferences"] == null ? null : Preferences.fromJson(json["preferences"]),
      injuries: json["injuries"] == null ? [] : List<String>.from(json["injuries"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "preferences": preferences?.toJson(),
    "injuries": injuries.map((x) => x).toList(),
  };

}
