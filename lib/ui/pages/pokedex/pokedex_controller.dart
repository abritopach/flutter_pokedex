import 'package:flutter_pokedex/data/repositories/pokemon_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final PokedexControllerProvider = Provider((ref) {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  return PokedexController(ref: ref, pokemonRepositoryImpl: pokemonRepository);
});

class PokedexController {
  final ProviderRef ref;
  final PokemonRepository pokemonRepositoryImpl;

  PokedexController({required this.ref, required this.pokemonRepositoryImpl});
}