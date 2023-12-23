import 'dart:convert';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl(client: http.Client());
});

final fetchPokemonsProvider = FutureProvider((ref) {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  return pokemonRepository.getPokemons();
});

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons();
}

class PokemonRepositoryImpl extends PokemonRepository {

  PokemonRepositoryImpl({required this.client});

  // Client for making calls to the API.
  final http.Client client;

  @override
  Future<List<Pokemon>> getPokemons() async {
    List<Pokemon> pokemons = [];

  // Using package:http, we fetch pokemons from the API.
  final response = await http.get(
    Uri.https('pokeapi.co', 'api/v2/pokemon')
    /*
    Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/pokemon',
      // No need to manually encode the query parameters, the "Uri" class does it for us.
      queryParameters: {'limit': limit, 'offset': offset},
    )
  );
  */
    );
  if (response.statusCode == 200) {
      var pokemonsJson = jsonDecode(response.body)["results"] as List<dynamic>;
      await Future.forEach((pokemonsJson), (pokemon) async {
        final response = await http.get(Uri.parse(pokemon['url']));
        // Using dart:convert, we then decode the JSON payload into a Map data structure.
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        // Finally, we convert the Map into a Pokemon instance.
        pokemons.add(Pokemon.fromJson(json));
      });
  }
  return pokemons;
  }
}

