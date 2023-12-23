// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPokemonsHash() => r'fa0475165fa66c2651a8293a5667d27cb3bcb57f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// This will create a provider named `getPokemonsProvider`
/// which will cache the result of this function.
///
/// Copied from [getPokemons].
@ProviderFor(getPokemons)
const getPokemonsProvider = GetPokemonsFamily();

/// This will create a provider named `getPokemonsProvider`
/// which will cache the result of this function.
///
/// Copied from [getPokemons].
class GetPokemonsFamily extends Family<AsyncValue<List<Pokemon>>> {
  /// This will create a provider named `getPokemonsProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [getPokemons].
  const GetPokemonsFamily();

  /// This will create a provider named `getPokemonsProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [getPokemons].
  GetPokemonsProvider call(
    int limit,
    int offset,
  ) {
    return GetPokemonsProvider(
      limit,
      offset,
    );
  }

  @override
  GetPokemonsProvider getProviderOverride(
    covariant GetPokemonsProvider provider,
  ) {
    return call(
      provider.limit,
      provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPokemonsProvider';
}

/// This will create a provider named `getPokemonsProvider`
/// which will cache the result of this function.
///
/// Copied from [getPokemons].
class GetPokemonsProvider extends AutoDisposeFutureProvider<List<Pokemon>> {
  /// This will create a provider named `getPokemonsProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [getPokemons].
  GetPokemonsProvider(
    int limit,
    int offset,
  ) : this._internal(
          (ref) => getPokemons(
            ref as GetPokemonsRef,
            limit,
            offset,
          ),
          from: getPokemonsProvider,
          name: r'getPokemonsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPokemonsHash,
          dependencies: GetPokemonsFamily._dependencies,
          allTransitiveDependencies:
              GetPokemonsFamily._allTransitiveDependencies,
          limit: limit,
          offset: offset,
        );

  GetPokemonsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final int limit;
  final int offset;

  @override
  Override overrideWith(
    FutureOr<List<Pokemon>> Function(GetPokemonsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPokemonsProvider._internal(
        (ref) => create(ref as GetPokemonsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pokemon>> createElement() {
    return _GetPokemonsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPokemonsProvider &&
        other.limit == limit &&
        other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetPokemonsRef on AutoDisposeFutureProviderRef<List<Pokemon>> {
  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _GetPokemonsProviderElement
    extends AutoDisposeFutureProviderElement<List<Pokemon>>
    with GetPokemonsRef {
  _GetPokemonsProviderElement(super.provider);

  @override
  int get limit => (origin as GetPokemonsProvider).limit;
  @override
  int get offset => (origin as GetPokemonsProvider).offset;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
