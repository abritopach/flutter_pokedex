// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesImpl _$$SpeciesImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesImpl(
      name: $enumDecode(_$PokemonTypesEnumMap, json['name']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SpeciesImplToJson(_$SpeciesImpl instance) =>
    <String, dynamic>{
      'name': _$PokemonTypesEnumMap[instance.name]!,
      'url': instance.url,
    };

const _$PokemonTypesEnumMap = {
  PokemonTypes.grass: 'grass',
  PokemonTypes.poison: 'poison',
  PokemonTypes.fire: 'fire',
  PokemonTypes.flying: 'flying',
  PokemonTypes.water: 'water',
  PokemonTypes.bug: 'bug',
  PokemonTypes.normal: 'normal',
  PokemonTypes.electric: 'electric',
  PokemonTypes.ground: 'ground',
  PokemonTypes.fairy: 'fairy',
  PokemonTypes.fighting: 'fighting',
  PokemonTypes.psychic: 'psychic',
  PokemonTypes.rock: 'rock',
  PokemonTypes.steel: 'steel',
  PokemonTypes.ice: 'ice',
  PokemonTypes.ghost: 'ghost',
  PokemonTypes.dragon: 'dragon',
  PokemonTypes.dark: 'dark',
  PokemonTypes.monster: 'monster',
  PokemonTypes.unknown: 'unknown',
};
