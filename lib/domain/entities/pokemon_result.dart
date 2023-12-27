import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_result.freezed.dart';
part 'pokemon_result.g.dart';

@freezed
class PokemonResult with _$PokemonResult {
    factory PokemonResult({
    required String name,
    required String url
}) = _PokemonResult;

   /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory PokemonResult.fromJson(Map<String, dynamic> json) =>
      _$PokemonResultFromJson(json);
}