// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lessonViewModelHash() => r'2f79eba94f294937e71d3cd8c6f796061858aedf';

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

abstract class _$LessonViewModel
    extends BuildlessAutoDisposeNotifier<LessonState> {
  late final int lessonId;

  LessonState build({
    required int lessonId,
  });
}

/// See also [LessonViewModel].
@ProviderFor(LessonViewModel)
const lessonViewModelProvider = LessonViewModelFamily();

/// See also [LessonViewModel].
class LessonViewModelFamily extends Family<LessonState> {
  /// See also [LessonViewModel].
  const LessonViewModelFamily();

  /// See also [LessonViewModel].
  LessonViewModelProvider call({
    required int lessonId,
  }) {
    return LessonViewModelProvider(
      lessonId: lessonId,
    );
  }

  @override
  LessonViewModelProvider getProviderOverride(
    covariant LessonViewModelProvider provider,
  ) {
    return call(
      lessonId: provider.lessonId,
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
  String? get name => r'lessonViewModelProvider';
}

/// See also [LessonViewModel].
class LessonViewModelProvider
    extends AutoDisposeNotifierProviderImpl<LessonViewModel, LessonState> {
  /// See also [LessonViewModel].
  LessonViewModelProvider({
    required int lessonId,
  }) : this._internal(
          () => LessonViewModel()..lessonId = lessonId,
          from: lessonViewModelProvider,
          name: r'lessonViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lessonViewModelHash,
          dependencies: LessonViewModelFamily._dependencies,
          allTransitiveDependencies:
              LessonViewModelFamily._allTransitiveDependencies,
          lessonId: lessonId,
        );

  LessonViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lessonId,
  }) : super.internal();

  final int lessonId;

  @override
  LessonState runNotifierBuild(
    covariant LessonViewModel notifier,
  ) {
    return notifier.build(
      lessonId: lessonId,
    );
  }

  @override
  Override overrideWith(LessonViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: LessonViewModelProvider._internal(
        () => create()..lessonId = lessonId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lessonId: lessonId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<LessonViewModel, LessonState>
      createElement() {
    return _LessonViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LessonViewModelProvider && other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LessonViewModelRef on AutoDisposeNotifierProviderRef<LessonState> {
  /// The parameter `lessonId` of this provider.
  int get lessonId;
}

class _LessonViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<LessonViewModel, LessonState>
    with LessonViewModelRef {
  _LessonViewModelProviderElement(super.provider);

  @override
  int get lessonId => (origin as LessonViewModelProvider).lessonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
