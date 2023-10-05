
import 'package:poke_app/api_services/api_service.dart';
import 'package:poke_app/models/pokemon_model.dart';
import 'package:flutter/material.dart';
import 'package:poke_app/pages/widget/pokemon_list.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<pokemon_model>?> poke;

  @override
  void initState() {
    super.initState();
    poke = ApiService().getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: poke,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final pokeM = snapshot.data as List<pokemon_model>;

          if (pokeM.isEmpty) {
            return const Center(
              child: Text("No pokemon found"),
            );
          }

          return PokeList(PokemonModelList: pokeM);
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error"),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}