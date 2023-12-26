import 'package:flutter_pokedex/domain/entities/pokemon_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
class PaginatedResponse with _$PaginatedResponse {
  factory PaginatedResponse({
    required int count,
    required String next,
    required String previous,
    required List<PokemonResult> results
  }) = _PaginatedResponse;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory PaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedResponseFromJson(json);
}
