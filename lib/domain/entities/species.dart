import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/colors.dart';
import 'package:flutter_pokedex/domain/entities/pokemon_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';
part 'species.g.dart';

@freezed
class Species with _$Species {
    factory Species({
    required PokemonTypes name,
    required String url
}) = _Species;

   /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}

extension SpeciesX on Species {
  Color get color {
    switch (name) {
      case PokemonTypes.grass:
        return AppColors.lightGreen;

      case PokemonTypes.bug:
        return AppColors.lightTeal;

      case PokemonTypes.fire:
        return AppColors.lightRed;

      case PokemonTypes.water:
        return AppColors.lightBlue;

      case PokemonTypes.fighting:
        return AppColors.red;

      case PokemonTypes.normal:
        return AppColors.beige;

      case PokemonTypes.electric:
        return AppColors.lightYellow;

      case PokemonTypes.psychic:
        return AppColors.lightPink;

      case PokemonTypes.poison:
        return AppColors.lightPurple;

      case PokemonTypes.ghost:
        return AppColors.purple;

      case PokemonTypes.ground:
        return AppColors.darkBrown;

      case PokemonTypes.rock:
        return AppColors.lightBrown;

      case PokemonTypes.dark:
        return AppColors.black;

      case PokemonTypes.dragon:
        return AppColors.violet;

      case PokemonTypes.fairy:
        return AppColors.pink;

      case PokemonTypes.flying:
        return AppColors.lilac;

      case PokemonTypes.ice:
        return AppColors.lightCyan;

      case PokemonTypes.steel:
        return AppColors.grey;

      default:
        return AppColors.lightBlue;
    }
  }
}