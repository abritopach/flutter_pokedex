// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypes1Impl _$$PokemonTypes1ImplFromJson(Map<String, dynamic> json) =>
    _$PokemonTypes1Impl(
      slot: json['slot'] as int,
      type: Species.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypes1ImplToJson(_$PokemonTypes1Impl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
