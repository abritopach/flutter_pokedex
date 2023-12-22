import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species.freezed.dart';
part 'pokemon_species.g.dart';

enum SpecieTypes {
  grass,
  poison,
  fire,
  flying,
  water,
  bug,
  normal,
  electric,
  ground,
  fairy,
  fighting,
  psychic,
  rock,
  steel,
  ice,
  ghost,
  dragon,
  dark,
  monster,
  unknown,
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
    factory PokemonSpecies({
    required SpecieTypes name,
    required String url
}) = _PokemonSpecies;

   /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

extension PokemonSpeciesX on PokemonSpecies {
  Color get color {
    switch (name) {
      case SpecieTypes.grass:
        return AppColors.lightGreen;

      case SpecieTypes.bug:
        return AppColors.lightTeal;

      case SpecieTypes.fire:
        return AppColors.lightRed;

      case SpecieTypes.water:
        return AppColors.lightBlue;

      case SpecieTypes.fighting:
        return AppColors.red;

      case SpecieTypes.normal:
        return AppColors.beige;

      case SpecieTypes.electric:
        return AppColors.lightYellow;

      case SpecieTypes.psychic:
        return AppColors.lightPink;

      case SpecieTypes.poison:
        return AppColors.lightPurple;

      case SpecieTypes.ghost:
        return AppColors.purple;

      case SpecieTypes.ground:
        return AppColors.darkBrown;

      case SpecieTypes.rock:
        return AppColors.lightBrown;

      case SpecieTypes.dark:
        return AppColors.black;

      case SpecieTypes.dragon:
        return AppColors.violet;

      case SpecieTypes.fairy:
        return AppColors.pink;

      case SpecieTypes.flying:
        return AppColors.lilac;

      case SpecieTypes.ice:
        return AppColors.lightCyan;

      case SpecieTypes.steel:
        return AppColors.grey;

      default:
        return AppColors.lightBlue;
    }
  }
}