// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResponseImpl _$$PaginatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedResponseImpl(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginatedResponseImplToJson(
        _$PaginatedResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
