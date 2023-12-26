// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchPokemonsParameters {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchPokemonsParametersCopyWith<FetchPokemonsParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPokemonsParametersCopyWith<$Res> {
  factory $FetchPokemonsParametersCopyWith(FetchPokemonsParameters value,
          $Res Function(FetchPokemonsParameters) then) =
      _$FetchPokemonsParametersCopyWithImpl<$Res, FetchPokemonsParameters>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class _$FetchPokemonsParametersCopyWithImpl<$Res,
        $Val extends FetchPokemonsParameters>
    implements $FetchPokemonsParametersCopyWith<$Res> {
  _$FetchPokemonsParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPokemonsParametersImplCopyWith<$Res>
    implements $FetchPokemonsParametersCopyWith<$Res> {
  factory _$$FetchPokemonsParametersImplCopyWith(
          _$FetchPokemonsParametersImpl value,
          $Res Function(_$FetchPokemonsParametersImpl) then) =
      __$$FetchPokemonsParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$FetchPokemonsParametersImplCopyWithImpl<$Res>
    extends _$FetchPokemonsParametersCopyWithImpl<$Res,
        _$FetchPokemonsParametersImpl>
    implements _$$FetchPokemonsParametersImplCopyWith<$Res> {
  __$$FetchPokemonsParametersImplCopyWithImpl(
      _$FetchPokemonsParametersImpl _value,
      $Res Function(_$FetchPokemonsParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$FetchPokemonsParametersImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchPokemonsParametersImpl implements _FetchPokemonsParameters {
  _$FetchPokemonsParametersImpl({required this.offset, required this.limit});

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'FetchPokemonsParameters(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPokemonsParametersImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPokemonsParametersImplCopyWith<_$FetchPokemonsParametersImpl>
      get copyWith => __$$FetchPokemonsParametersImplCopyWithImpl<
          _$FetchPokemonsParametersImpl>(this, _$identity);
}

abstract class _FetchPokemonsParameters implements FetchPokemonsParameters {
  factory _FetchPokemonsParameters(
      {required final int offset,
      required final int limit}) = _$FetchPokemonsParametersImpl;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$FetchPokemonsParametersImplCopyWith<_$FetchPokemonsParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
