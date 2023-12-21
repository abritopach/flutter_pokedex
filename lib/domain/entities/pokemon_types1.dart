import 'package:flutter_pokedex/domain/entities/species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_types1.freezed.dart';
part 'pokemon_types1.g.dart';

@freezed
class PokemonTypes1 with _$PokemonTypes1 {
  factory PokemonTypes1({
    required int slot,
    required Species type
  }) = _PokemonTypes1;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory PokemonTypes1.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypes1FromJson(json);
}
