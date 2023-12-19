import 'package:flutter/material.dart';
import 'package:flutter_pokedex/ui/widgets/pokeball_background.dart';
import 'package:flutter_pokedex/utils/size.dart';

part 'sections/pokemons_grid.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  @override
  Widget build(BuildContext context) {
    return const PokeballBackground(
      child: Stack(
        children: [
          _PokemonGrid(),
        ],
      ),
    );
  }
}