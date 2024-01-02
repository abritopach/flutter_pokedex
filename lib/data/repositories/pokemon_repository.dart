import 'package:flutter_pokedex/data/sources/remote/pokeapi/pokedex_api.dart';
import 'package:flutter_pokedex/domain/entities/paginated_response.dart';
import 'package:flutter_pokedex/domain/entities/pokemon.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'pokemon_repository.freezed.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl();
});

@freezed
abstract class FetchPokemonsParameters with _$FetchPokemonsParameters {
  factory FetchPokemonsParameters({
    required int offset,
    required int limit,
  }) = _FetchPokemonsParameters;
}

final fetchPokemonsProvider = FutureProvider.family<List<Pokemon>, FetchPokemonsParameters>((ref, fetchPokemonsParameters) {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  return pokemonRepository.fetchPokemons(fetchPokemonsParameters.offset, fetchPokemonsParameters.limit);
});

final fetchPokemonsProvider2 = FutureProvider.family<PaginatedResponse, FetchPokemonsParameters>((ref, fetchPokemonsParameters) {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  return pokemonRepository.fetchPokemons2(fetchPokemonsParameters.offset, fetchPokemonsParameters.limit);
});

/// The provider that has the value of the total counter of the pokemons
final fetchPokemonsCountProvider = Provider<AsyncValue<int>>((ref) {
  return ref.watch(fetchPokemonsProvider2(FetchPokemonsParameters(offset: 0, limit: 20))).whenData(
        (PaginatedResponse pageData) => pageData.count,
      );
});

final currentPokemonProvider = Provider<AsyncValue<Pokemon>>((ref) {
  throw UnimplementedError();
});

final fetchPokemonProvider = FutureProvider.family<Pokemon, String>((ref, url) async {
  final pokemonRepository = ref.watch(pokemonRepositoryProvider);
  return await pokemonRepository.fetchPokemon(url);
});

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemons(int offset, int limit);
  Future<PaginatedResponse> fetchPokemons2(int offset, int limit);
  Future<Pokemon> fetchPokemon(String url);
}

class PokemonRepositoryImpl extends PokemonRepository {

  PokemonRepositoryImpl({PokedexApi? pokedexApi})
    : _pokedexApi = pokedexApi ?? PokedexApiImpl(client: http.Client());

  // Client for making calls to the API.
  final PokedexApi _pokedexApi;

  @override
  Future<List<Pokemon>> fetchPokemons(int offset, int limit) async {
    try {
      final response = await _pokedexApi.fetchPokemons(offset, limit);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PaginatedResponse> fetchPokemons2(int offset, int limit) async {
    try {
      final response = await _pokedexApi.fetchPokemons2(offset, limit);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Pokemon> fetchPokemon(String url) async {
    try {
      final response = await _pokedexApi.fetchPokemon(url);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}