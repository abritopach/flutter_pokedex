import 'package:flutter_pokedex/data/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokedexControllerProvider =
    StateNotifierProvider<PokedexController, List<Pokemon>>((ref) {
  return PokedexController(ref);
});


class PokedexController extends StateNotifier<List<Pokemon>> {
  PokedexController(Ref ref)
      : _pokemonRepository = ref.read(pokemonRepositoryProvider),
        super([]);

  final PokemonRepository _pokemonRepository;

  Future<void> fetchPokemons() async {
    final results = await _pokemonRepository.fetchPokemons(0, 20);
    state = results;
  }

  void searchPokemons(String searchText) {
    List<Pokemon> results = [];
    if (searchText.isEmpty) {
      results = state;
    }
    else {
      results = state.where((element) => element.name.toLowerCase().contains(searchText.toLowerCase())).toList();
    }
    state = results;
  }

}