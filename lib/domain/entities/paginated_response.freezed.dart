// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedResponse _$PaginatedResponseFromJson(Map<String, dynamic> json) {
  return _PaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<PaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<$Res> {
  factory $PaginatedResponseCopyWith(
          PaginatedResponse value, $Res Function(PaginatedResponse) then) =
      _$PaginatedResponseCopyWithImpl<$Res, PaginatedResponse>;
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<$Res, $Val extends PaginatedResponse>
    implements $PaginatedResponseCopyWith<$Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResponseImplCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$$PaginatedResponseImplCopyWith(_$PaginatedResponseImpl value,
          $Res Function(_$PaginatedResponseImpl) then) =
      __$$PaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class __$$PaginatedResponseImplCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res, _$PaginatedResponseImpl>
    implements _$$PaginatedResponseImplCopyWith<$Res> {
  __$$PaginatedResponseImplCopyWithImpl(_$PaginatedResponseImpl _value,
      $Res Function(_$PaginatedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PaginatedResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedResponseImpl implements _PaginatedResponse {
  _$PaginatedResponseImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<PokemonResult> results})
      : _results = results;

  factory _$PaginatedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonResult> _results;
  @override
  List<PokemonResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginatedResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseImplCopyWith<_$PaginatedResponseImpl> get copyWith =>
      __$$PaginatedResponseImplCopyWithImpl<_$PaginatedResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _PaginatedResponse implements PaginatedResponse {
  factory _PaginatedResponse(
      {required final int count,
      required final String? next,
      required final String? previous,
      required final List<PokemonResult> results}) = _$PaginatedResponseImpl;

  factory _PaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseImplCopyWith<_$PaginatedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
