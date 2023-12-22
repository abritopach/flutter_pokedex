// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypesImpl _$$PokemonTypesImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypesImpl(
      slot: json['slot'] as int,
      type: PokemonSpecies.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypesImplToJson(_$PokemonTypesImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
