// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  double get height => throw _privateConstructorUsedError;
  bool get is_default => throw _privateConstructorUsedError;
  String get location_area_encounters => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  List<PokemonTypes> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {double height,
      bool is_default,
      String location_area_encounters,
      String name,
      int id,
      double weight,
      List<PokemonTypes> types});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? is_default = null,
    Object? location_area_encounters = null,
    Object? name = null,
    Object? id = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool,
      location_area_encounters: null == location_area_encounters
          ? _value.location_area_encounters
          : location_area_encounters // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypes>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double height,
      bool is_default,
      String location_area_encounters,
      String name,
      int id,
      double weight,
      List<PokemonTypes> types});
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? is_default = null,
    Object? location_area_encounters = null,
    Object? name = null,
    Object? id = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_$PokemonImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool,
      location_area_encounters: null == location_area_encounters
          ? _value.location_area_encounters
          : location_area_encounters // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  _$PokemonImpl(
      {required this.height,
      required this.is_default,
      required this.location_area_encounters,
      required this.name,
      required this.id,
      required this.weight,
      required final List<PokemonTypes> types})
      : _types = types;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  final double height;
  @override
  final bool is_default;
  @override
  final String location_area_encounters;
  @override
  final String name;
  @override
  final int id;
  @override
  final double weight;
  final List<PokemonTypes> _types;
  @override
  List<PokemonTypes> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'Pokemon(height: $height, is_default: $is_default, location_area_encounters: $location_area_encounters, name: $name, id: $id, weight: $weight, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.is_default, is_default) ||
                other.is_default == is_default) &&
            (identical(
                    other.location_area_encounters, location_area_encounters) ||
                other.location_area_encounters == location_area_encounters) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      is_default,
      location_area_encounters,
      name,
      id,
      weight,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {required final double height,
      required final bool is_default,
      required final String location_area_encounters,
      required final String name,
      required final int id,
      required final double weight,
      required final List<PokemonTypes> types}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  double get height;
  @override
  bool get is_default;
  @override
  String get location_area_encounters;
  @override
  String get name;
  @override
  int get id;
  @override
  double get weight;
  @override
  List<PokemonTypes> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
