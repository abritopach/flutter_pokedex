// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      height: (json['height'] as num).toDouble(),
      is_default: json['is_default'] as bool,
      location_area_encounters: json['location_area_encounters'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      weight: (json['weight'] as num).toDouble(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'is_default': instance.is_default,
      'location_area_encounters': instance.location_area_encounters,
      'name': instance.name,
      'id': instance.id,
      'weight': instance.weight,
      'types': instance.types,
    };
