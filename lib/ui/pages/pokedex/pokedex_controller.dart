import 'dart:async';

import 'package:flutter_pokedex/data/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokedexControllerProvider =
    AsyncNotifierProvider<PokedexController, List<Pokemon>>(PokedexController.new);

class PokedexController extends AsyncNotifier<List<Pokemon>> {
  bool hasMore = true;
  List<Pokemon> _pokemonsList = [];
  int offset = 0;
  int limit = 20;

  @override
  Future<List<Pokemon>> build() async {
    state = const AsyncLoading();
    final newState = await AsyncValue.guard(() => fetchPokemons(offset, limit));
    state = newState;
    return newState.value ?? [];
  }

  Future<List<Pokemon>> fetchPokemons(int offset, int limit) async {
    final pokemonRepository = ref.read(pokemonRepositoryProvider);
    final pokemons = await pokemonRepository.fetchPokemons(offset, limit);
    _pokemonsList = [...pokemons];
    hasMore = pokemons.isNotEmpty;
    return pokemons;
  }

  Future<void> fetchMore() async {
    if (state.isLoading || !hasMore) return;
    state = const AsyncLoading();
    final newState = await AsyncValue.guard(() async {
      offset += limit;
      final newPokemons = await fetchPokemons(offset, limit);
      _pokemonsList = [...?state.value, ...newPokemons];
      return [...?state.value, ...newPokemons];
    });
    state = newState;
  }

  Future<void> searchPokemons(String searchText) async {
    var newState = await AsyncValue.guard(() async {
      if (searchText.isEmpty) {
        return _pokemonsList;
      } else {
        final filteredPokemon= _pokemonsList.where((element) => element.name.toLowerCase().contains(searchText.toLowerCase())).toList();
        return filteredPokemon;
      }
    });
    state = newState;
  }
}