import 'package:flutter/material.dart';
import 'package:poke_app/models/pokemon_model.dart';


class PokeCard extends StatelessWidget{
  final pokemon_model poke;
  
  const PokeCard({super.key, required this.poke});
  
  @override
  
  Widget build (BuildContext context){
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(poke.url),
              Text(poke.name)
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(poke.name)
            ],
          )
        ],
      ),
    );
  }
}