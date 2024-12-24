// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherServiceHash() => r'4cfe2c629704057e3ac9bafd609edff3eea202ad';

/// See also [weatherService].
@ProviderFor(weatherService)
final weatherServiceProvider = AutoDisposeProvider<WeatherService>.internal(
  weatherService,
  name: r'weatherServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeatherServiceRef = AutoDisposeProviderRef<WeatherService>;
String _$weatherDataHash() => r'e52969d6ebf7592843382ead63b9dc6866535521';

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

/// See also [weatherData].
@ProviderFor(weatherData)
const weatherDataProvider = WeatherDataFamily();

/// See also [weatherData].
class WeatherDataFamily extends Family<AsyncValue<Weather>> {
  /// See also [weatherData].
  const WeatherDataFamily();

  /// See also [weatherData].
  WeatherDataProvider call(
    String city,
  ) {
    return WeatherDataProvider(
      city,
    );
  }

  @override
  WeatherDataProvider getProviderOverride(
    covariant WeatherDataProvider provider,
  ) {
    return call(
      provider.city,
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
  String? get name => r'weatherDataProvider';
}

/// See also [weatherData].
class WeatherDataProvider extends AutoDisposeFutureProvider<Weather> {
  /// See also [weatherData].
  WeatherDataProvider(
    String city,
  ) : this._internal(
          (ref) => weatherData(
            ref as WeatherDataRef,
            city,
          ),
          from: weatherDataProvider,
          name: r'weatherDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherDataHash,
          dependencies: WeatherDataFamily._dependencies,
          allTransitiveDependencies:
              WeatherDataFamily._allTransitiveDependencies,
          city: city,
        );

  WeatherDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final String city;

  @override
  Override overrideWith(
    FutureOr<Weather> Function(WeatherDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherDataProvider._internal(
        (ref) => create(ref as WeatherDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Weather> createElement() {
    return _WeatherDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WeatherDataRef on AutoDisposeFutureProviderRef<Weather> {
  /// The parameter `city` of this provider.
  String get city;
}

class _WeatherDataProviderElement
    extends AutoDisposeFutureProviderElement<Weather> with WeatherDataRef {
  _WeatherDataProviderElement(super.provider);

  @override
  String get city => (origin as WeatherDataProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
