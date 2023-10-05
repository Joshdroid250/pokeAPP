import 'dart:convert';

class pokemon_model {
  pokemon_model({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory pokemon_model.fromJson(Map<String, dynamic> json) => pokemon_model(
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "weight": url,
  };
  
  static List<pokemon_model> pokemonModelFromJson(String str) =>
      List<pokemon_model>.from(json.decode(str).map((x) => pokemon_model.fromJson(x)));

  String pokemonModelToJson(List<pokemon_model> data) =>
      json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
  
}