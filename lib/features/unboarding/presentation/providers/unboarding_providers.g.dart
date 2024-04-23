// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unboarding_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unboardingLocalDataSourceHash() =>
    r'85b7d676d5821741c2fd026ff9076500b4b66a62';

/// See also [unboardingLocalDataSource].
@ProviderFor(unboardingLocalDataSource)
final unboardingLocalDataSourceProvider =
    Provider<UnboardingDataSource>.internal(
  unboardingLocalDataSource,
  name: r'unboardingLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unboardingLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UnboardingLocalDataSourceRef = ProviderRef<UnboardingDataSource>;
String _$unboardingRepositoryHash() =>
    r'a4284a1142d47e2acb321a07ceb23dc438917855';

/// See also [unboardingRepository].
@ProviderFor(unboardingRepository)
final unboardingRepositoryProvider =
    AutoDisposeProvider<UnboardingRepositoryBase>.internal(
  unboardingRepository,
  name: r'unboardingRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unboardingRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UnboardingRepositoryRef
    = AutoDisposeProviderRef<UnboardingRepositoryBase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
