// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_types1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonTypes1 _$PokemonTypes1FromJson(Map<String, dynamic> json) {
  return _PokemonTypes1.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypes1 {
  int get slot => throw _privateConstructorUsedError;
  Species get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypes1CopyWith<PokemonTypes1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypes1CopyWith<$Res> {
  factory $PokemonTypes1CopyWith(
          PokemonTypes1 value, $Res Function(PokemonTypes1) then) =
      _$PokemonTypes1CopyWithImpl<$Res, PokemonTypes1>;
  @useResult
  $Res call({int slot, Species type});

  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypes1CopyWithImpl<$Res, $Val extends PokemonTypes1>
    implements $PokemonTypes1CopyWith<$Res> {
  _$PokemonTypes1CopyWithImpl(this._value, this._then);

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
              as Species,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get type {
    return $SpeciesCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypes1ImplCopyWith<$Res>
    implements $PokemonTypes1CopyWith<$Res> {
  factory _$$PokemonTypes1ImplCopyWith(
          _$PokemonTypes1Impl value, $Res Function(_$PokemonTypes1Impl) then) =
      __$$PokemonTypes1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Species type});

  @override
  $SpeciesCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypes1ImplCopyWithImpl<$Res>
    extends _$PokemonTypes1CopyWithImpl<$Res, _$PokemonTypes1Impl>
    implements _$$PokemonTypes1ImplCopyWith<$Res> {
  __$$PokemonTypes1ImplCopyWithImpl(
      _$PokemonTypes1Impl _value, $Res Function(_$PokemonTypes1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypes1Impl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypes1Impl implements _PokemonTypes1 {
  _$PokemonTypes1Impl({required this.slot, required this.type});

  factory _$PokemonTypes1Impl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypes1ImplFromJson(json);

  @override
  final int slot;
  @override
  final Species type;

  @override
  String toString() {
    return 'PokemonTypes1(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypes1Impl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypes1ImplCopyWith<_$PokemonTypes1Impl> get copyWith =>
      __$$PokemonTypes1ImplCopyWithImpl<_$PokemonTypes1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypes1ImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypes1 implements PokemonTypes1 {
  factory _PokemonTypes1(
      {required final int slot,
      required final Species type}) = _$PokemonTypes1Impl;

  factory _PokemonTypes1.fromJson(Map<String, dynamic> json) =
      _$PokemonTypes1Impl.fromJson;

  @override
  int get slot;
  @override
  Species get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypes1ImplCopyWith<_$PokemonTypes1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
