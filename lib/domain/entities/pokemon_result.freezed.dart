// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResult _$PokemonResultFromJson(Map<String, dynamic> json) {
  return _PokemonResult.fromJson(json);
}

/// @nodoc
mixin _$PokemonResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResultCopyWith<PokemonResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResultCopyWith<$Res> {
  factory $PokemonResultCopyWith(
          PokemonResult value, $Res Function(PokemonResult) then) =
      _$PokemonResultCopyWithImpl<$Res, PokemonResult>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonResultCopyWithImpl<$Res, $Val extends PokemonResult>
    implements $PokemonResultCopyWith<$Res> {
  _$PokemonResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResultImplCopyWith<$Res>
    implements $PokemonResultCopyWith<$Res> {
  factory _$$PokemonResultImplCopyWith(
          _$PokemonResultImpl value, $Res Function(_$PokemonResultImpl) then) =
      __$$PokemonResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonResultImplCopyWithImpl<$Res>
    extends _$PokemonResultCopyWithImpl<$Res, _$PokemonResultImpl>
    implements _$$PokemonResultImplCopyWith<$Res> {
  __$$PokemonResultImplCopyWithImpl(
      _$PokemonResultImpl _value, $Res Function(_$PokemonResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResultImpl implements _PokemonResult {
  _$PokemonResultImpl({required this.name, required this.url});

  factory _$PokemonResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResultImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResultImplCopyWith<_$PokemonResultImpl> get copyWith =>
      __$$PokemonResultImplCopyWithImpl<_$PokemonResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResultImplToJson(
      this,
    );
  }
}

abstract class _PokemonResult implements PokemonResult {
  factory _PokemonResult(
      {required final String name,
      required final String url}) = _$PokemonResultImpl;

  factory _PokemonResult.fromJson(Map<String, dynamic> json) =
      _$PokemonResultImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonResultImplCopyWith<_$PokemonResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
