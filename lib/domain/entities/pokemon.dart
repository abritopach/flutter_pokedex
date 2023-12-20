
import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required double height,
    required bool is_default,
    required String location_area_encounters,
    required String name,
    required int id,
    required double weight,
  }) = _Pokemon;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

