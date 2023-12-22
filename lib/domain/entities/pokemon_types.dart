import 'package:flutter_pokedex/domain/entities/pokemon_species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_types.freezed.dart';
part 'pokemon_types.g.dart';

@freezed
class PokemonTypes with _$PokemonTypes {
  factory PokemonTypes({
    required int slot,
    required PokemonSpecies type
  }) = _PokemonTypes;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory PokemonTypes.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypesFromJson(json);
}
