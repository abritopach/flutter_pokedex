import 'dart:convert';
import 'package:flutter_pokedex/domain/entities/paginated_response.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:http/http.dart' as http;

class PokedexApiException implements Exception {

  PokedexApiException(this.message);
  final String message;

  @override
  String toString() {
    return message;
  }
}

abstract class PokedexApi {
  Future<List<Pokemon>> fetchPokemons(int offset, int limit);
  Future<PaginatedResponse> fetchPokemons2(int offset, int limit);
  Future<Pokemon> fetchPokemon(String url);
}

class PokedexApiImpl extends PokedexApi {

  PokedexApiImpl({required this.client});

  // Client for making calls to the API.
  final http.Client client;

  @override
  Future<List<Pokemon>> fetchPokemons(int offset, int limit) async {
    List<Pokemon> pokemons = [];
    try {
       // Using package:http, we fetch pokemons from the API.
      final response = await http.get(
        //Uri.https('pokeapi.co', 'api/v2/pokemon')
        Uri(
          scheme: 'https',
          host: 'pokeapi.co',
          path: 'api/v2/pokemon',
          // No need to manually encode the query parameters, the "Uri" class does it for us.
          // https://github.com/dart-lang/sdk/issues/46251
          queryParameters: {'offset': offset.toString(), 'limit': limit.toString()},
        )
      );
      if (response.statusCode == 200) {
          final json = jsonDecode(response.body) as Map<String, dynamic>;
          final paginateResponse = PaginatedResponse.fromJson(json);

          await Future.forEach((paginateResponse.results), (pokemon) async {
            final response = await http.get(Uri.parse(pokemon.url));
            // Using dart:convert, we then decode the JSON payload into a Map data structure.
            final json = jsonDecode(response.body) as Map<String, dynamic>;
            // Finally, we convert the Map into a Pokemon instance.
            pokemons.add(Pokemon.fromJson(json));
          });
          return pokemons;
      }
      throw PokedexApiException('Unable to fetch pokemons, try again.');
    } catch (ex) {
      throw PokedexApiException('Unable to fetch pokemons, try again.');
    }
  }

  @override
  Future<PaginatedResponse> fetchPokemons2(int offset, int limit) async {
    try {
      // Using package:http, we fetch pokemons from the API.
      final response = await http.get(
        Uri(
          scheme: 'https',
          host: 'pokeapi.co',
          path: 'api/v2/pokemon',
          // No need to manually encode the query parameters, the "Uri" class does it for us.
          // https://github.com/dart-lang/sdk/issues/46251
          queryParameters: {'offset': offset.toString(), 'limit': limit.toString()},
        )
      );
      if (response.statusCode == 200) {
        // Using dart:convert, we then decode the JSON payload into a Map data structure.
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        // Finally, we convert the Map into an PaginatedResponse instance.
        return PaginatedResponse.fromJson(json);
      }
      throw PokedexApiException('Unable to fetch pokemons, try again.');
    } catch (ex) {
      throw PokedexApiException('Unable to fetch pokemons, try again.');
    }
  }

  @override
  Future<Pokemon> fetchPokemon(String url) async {
    try {
      // Using package:http, we fetch pokemons from the API.
      final response = await http.get(
        Uri.https(url)
      );
      if (response.statusCode == 200) {
        // Using dart:convert, we then decode the JSON payload into a Map data structure.
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        // Finally, we convert the Map into an Pokemon instance.
        return Pokemon.fromJson(json);
      }
      throw PokedexApiException('Unable to fetch pokemon, try again.');
    } catch (ex) {
      throw PokedexApiException('Unable to fetch pokemon, try again.');
    }
  }

}