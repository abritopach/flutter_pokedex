// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypes _$PokemonTypesFromJson(Map<String, dynamic> json) {
  return _PokemonTypes.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypes {
  int get slot => throw _privateConstructorUsedError;
  PokemonSpecies get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypesCopyWith<PokemonTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypesCopyWith<$Res> {
  factory $PokemonTypesCopyWith(
          PokemonTypes value, $Res Function(PokemonTypes) then) =
      _$PokemonTypesCopyWithImpl<$Res, PokemonTypes>;
  @useResult
  $Res call({int slot, PokemonSpecies type});

  $PokemonSpeciesCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypesCopyWithImpl<$Res, $Val extends PokemonTypes>
    implements $PokemonTypesCopyWith<$Res> {
  _$PokemonTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesCopyWith<$Res> get type {
    return $PokemonSpeciesCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypesImplCopyWith<$Res>
    implements $PokemonTypesCopyWith<$Res> {
  factory _$$PokemonTypesImplCopyWith(
          _$PokemonTypesImpl value, $Res Function(_$PokemonTypesImpl) then) =
      __$$PokemonTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, PokemonSpecies type});

  @override
  $PokemonSpeciesCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypesImplCopyWithImpl<$Res>
    extends _$PokemonTypesCopyWithImpl<$Res, _$PokemonTypesImpl>
    implements _$$PokemonTypesImplCopyWith<$Res> {
  __$$PokemonTypesImplCopyWithImpl(
      _$PokemonTypesImpl _value, $Res Function(_$PokemonTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypesImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypesImpl implements _PokemonTypes {
  _$PokemonTypesImpl({required this.slot, required this.type});

  factory _$PokemonTypesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypesImplFromJson(json);

  @override
  final int slot;
  @override
  final PokemonSpecies type;

  @override
  String toString() {
    return 'PokemonTypes(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypesImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypesImplCopyWith<_$PokemonTypesImpl> get copyWith =>
      __$$PokemonTypesImplCopyWithImpl<_$PokemonTypesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypesImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypes implements PokemonTypes {
  factory _PokemonTypes(
      {required final int slot,
      required final PokemonSpecies type}) = _$PokemonTypesImpl;

  factory _PokemonTypes.fromJson(Map<String, dynamic> json) =
      _$PokemonTypesImpl.fromJson;

  @override
  int get slot;
  @override
  PokemonSpecies get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypesImplCopyWith<_$PokemonTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
