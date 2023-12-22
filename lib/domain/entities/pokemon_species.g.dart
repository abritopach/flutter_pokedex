// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesImpl _$$PokemonSpeciesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSpeciesImpl(
      name: $enumDecode(_$SpecieTypesEnumMap, json['name']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonSpeciesImplToJson(
        _$PokemonSpeciesImpl instance) =>
    <String, dynamic>{
      'name': _$SpecieTypesEnumMap[instance.name]!,
      'url': instance.url,
    };

const _$SpecieTypesEnumMap = {
  SpecieTypes.grass: 'grass',
  SpecieTypes.poison: 'poison',
  SpecieTypes.fire: 'fire',
  SpecieTypes.flying: 'flying',
  SpecieTypes.water: 'water',
  SpecieTypes.bug: 'bug',
  SpecieTypes.normal: 'normal',
  SpecieTypes.electric: 'electric',
  SpecieTypes.ground: 'ground',
  SpecieTypes.fairy: 'fairy',
  SpecieTypes.fighting: 'fighting',
  SpecieTypes.psychic: 'psychic',
  SpecieTypes.rock: 'rock',
  SpecieTypes.steel: 'steel',
  SpecieTypes.ice: 'ice',
  SpecieTypes.ghost: 'ghost',
  SpecieTypes.dragon: 'dragon',
  SpecieTypes.dark: 'dark',
  SpecieTypes.monster: 'monster',
  SpecieTypes.unknown: 'unknown',
};
