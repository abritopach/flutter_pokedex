import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/data/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_pokedex/ui/widgets/pokeball_background.dart';
import 'package:flutter_pokedex/ui/widgets/pokemon_card.dart';
import 'package:flutter_pokedex/utils/size.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pokedex/constants/images.dart';

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