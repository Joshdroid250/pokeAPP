import 'dart:convert';

class pokemon_model {
  pokemon_model({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
  });

  int id;
  String name;
  int baseExperience;
  int height;
  bool isDefault;
  int order;
  int weight;

  factory pokemon_model.fromJson(Map<String, dynamic> json) => pokemon_model(
    id: json["id"],
    name: json["name"],
    baseExperience: json["base_experience"],
    height: json["height"],
    isDefault: json["is_default"],
    order: json["order"],
    weight: json["weight"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "base_experience": baseExperience,
    "height": height,
    "is_default": isDefault,
    "order": order,
    "weight": weight,
  };
  
  static List<pokemon_model> pokemonModelFromJson(String str) =>
      List<pokemon_model>.from(json.decode(str).map((x) => pokemon_model.fromJson(x)));

  String pokemonModelToJson(List<pokemon_model> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  
}