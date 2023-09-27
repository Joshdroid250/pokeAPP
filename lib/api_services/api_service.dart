import 'dart:developer';

import 'package:poke_app/constants/api_constants.dart';
import 'package:poke_app/models/pokemon_model.dart';
import 'package:http/http.dart' as http;


class ApiService{
  Future<List<pokemon_model>?> getPokemon() async{
    try{
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.pokendpoint);
      var response = await http.get(url);

      if (response.statusCode == 200){
        var jsonResponse = response.body;
        return pokemon_model.pokemonModelFromJson(jsonResponse);
      }
    }catch(e){
      log(e.toString());
    }
    return null;
  }
}