// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectionRepositoryHash() =>
    r'd0d79aaa74220e692b35115d0df65a2478d40a02';

/// See also [connectionRepository].
@ProviderFor(connectionRepository)
final connectionRepositoryProvider =
    AutoDisposeProvider<ConnectionRepository>.internal(
  connectionRepository,
  name: r'connectionRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectionRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectionRepositoryRef = AutoDisposeProviderRef<ConnectionRepository>;
String _$clientHash() => r'1085e62a17fc560d1313e815852063dfe81fed2b';

/// See also [client].
@ProviderFor(client)
final clientProvider = AutoDisposeProvider<ProApiClient>.internal(
  client,
  name: r'clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClientRef = AutoDisposeProviderRef<ProApiClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
