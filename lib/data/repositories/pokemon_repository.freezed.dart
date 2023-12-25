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
mixin _$MyParameter {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyParameterCopyWith<MyParameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyParameterCopyWith<$Res> {
  factory $MyParameterCopyWith(
          MyParameter value, $Res Function(MyParameter) then) =
      _$MyParameterCopyWithImpl<$Res, MyParameter>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class _$MyParameterCopyWithImpl<$Res, $Val extends MyParameter>
    implements $MyParameterCopyWith<$Res> {
  _$MyParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyParameterImplCopyWith<$Res>
    implements $MyParameterCopyWith<$Res> {
  factory _$$MyParameterImplCopyWith(
          _$MyParameterImpl value, $Res Function(_$MyParameterImpl) then) =
      __$$MyParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$MyParameterImplCopyWithImpl<$Res>
    extends _$MyParameterCopyWithImpl<$Res, _$MyParameterImpl>
    implements _$$MyParameterImplCopyWith<$Res> {
  __$$MyParameterImplCopyWithImpl(
      _$MyParameterImpl _value, $Res Function(_$MyParameterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$MyParameterImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MyParameterImpl implements _MyParameter {
  _$MyParameterImpl({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'MyParameter(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyParameterImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyParameterImplCopyWith<_$MyParameterImpl> get copyWith =>
      __$$MyParameterImplCopyWithImpl<_$MyParameterImpl>(this, _$identity);
}

abstract class _MyParameter implements MyParameter {
  factory _MyParameter({required final int limit, required final int offset}) =
      _$MyParameterImpl;

  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$MyParameterImplCopyWith<_$MyParameterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
