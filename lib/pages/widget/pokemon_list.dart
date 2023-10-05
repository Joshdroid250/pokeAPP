import 'package:flutter/material.dart';
import 'package:poke_app/models/pokemon_model.dart';
import 'package:poke_app/pages/widget/pokemonCard.dart';


class PokeList extends StatelessWidget {
  final List<pokemon_model> PokemonModelList;

  const PokeList({super.key, required this.PokemonModelList});

  @override
  Widget build(BuildContext context){
    return PokemonModelList.isEmpty
        ?const Center(
      child: CircularProgressIndicator(),
    )
        : ListView.builder(
      itemCount: PokemonModelList.length,
      itemBuilder: (context, index){
        return PokeCard(poke: PokemonModelList[index]);

    },
    );
  }
}