import 'dart:convert';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';


// Necessary for code-generation to work
part 'pokeapi.g.dart';

/// This will create a provider named `getPokemonsProvider`
/// which will cache the result of this function.
@riverpod
Future<List<Pokemon>> getPokemons(GetPokemonsRef ref) async {

  List<Pokemon> pokemons = [];

  // Using package:http, we fetch pokemons from the API.
  final response = await http.get(Uri.https('pokeapi.co', 'api/v2/pokemon'));
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