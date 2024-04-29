// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseStateRepositoryHash() =>
    r'aca15021c5f79bed2c578e0c5368cc0838a809d2';

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

abstract class _$CourseStateRepository
    extends BuildlessAsyncNotifier<List<Course>> {
  late final CourseRemoteDataSource courseRemoteDataSource;
  late final LessonLocalDataSource lessonLocalDataSource;

  FutureOr<List<Course>> build({
    required CourseRemoteDataSource courseRemoteDataSource,
    required LessonLocalDataSource lessonLocalDataSource,
  });
}

/// See also [CourseStateRepository].
@ProviderFor(CourseStateRepository)
const courseStateRepositoryProvider = CourseStateRepositoryFamily();

/// See also [CourseStateRepository].
class CourseStateRepositoryFamily extends Family<AsyncValue<List<Course>>> {
  /// See also [CourseStateRepository].
  const CourseStateRepositoryFamily();

  /// See also [CourseStateRepository].
  CourseStateRepositoryProvider call({
    required CourseRemoteDataSource courseRemoteDataSource,
    required LessonLocalDataSource lessonLocalDataSource,
  }) {
    return CourseStateRepositoryProvider(
      courseRemoteDataSource: courseRemoteDataSource,
      lessonLocalDataSource: lessonLocalDataSource,
    );
  }

  @override
  CourseStateRepositoryProvider getProviderOverride(
    covariant CourseStateRepositoryProvider provider,
  ) {
    return call(
      courseRemoteDataSource: provider.courseRemoteDataSource,
      lessonLocalDataSource: provider.lessonLocalDataSource,
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
  String? get name => r'courseStateRepositoryProvider';
}

/// See also [CourseStateRepository].
class CourseStateRepositoryProvider
    extends AsyncNotifierProviderImpl<CourseStateRepository, List<Course>> {
  /// See also [CourseStateRepository].
  CourseStateRepositoryProvider({
    required CourseRemoteDataSource courseRemoteDataSource,
    required LessonLocalDataSource lessonLocalDataSource,
  }) : this._internal(
          () => CourseStateRepository()
            ..courseRemoteDataSource = courseRemoteDataSource
            ..lessonLocalDataSource = lessonLocalDataSource,
          from: courseStateRepositoryProvider,
          name: r'courseStateRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseStateRepositoryHash,
          dependencies: CourseStateRepositoryFamily._dependencies,
          allTransitiveDependencies:
              CourseStateRepositoryFamily._allTransitiveDependencies,
          courseRemoteDataSource: courseRemoteDataSource,
          lessonLocalDataSource: lessonLocalDataSource,
        );

  CourseStateRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.courseRemoteDataSource,
    required this.lessonLocalDataSource,
  }) : super.internal();

  final CourseRemoteDataSource courseRemoteDataSource;
  final LessonLocalDataSource lessonLocalDataSource;

  @override
  FutureOr<List<Course>> runNotifierBuild(
    covariant CourseStateRepository notifier,
  ) {
    return notifier.build(
      courseRemoteDataSource: courseRemoteDataSource,
      lessonLocalDataSource: lessonLocalDataSource,
    );
  }

  @override
  Override overrideWith(CourseStateRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseStateRepositoryProvider._internal(
        () => create()
          ..courseRemoteDataSource = courseRemoteDataSource
          ..lessonLocalDataSource = lessonLocalDataSource,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        courseRemoteDataSource: courseRemoteDataSource,
        lessonLocalDataSource: lessonLocalDataSource,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<CourseStateRepository, List<Course>>
      createElement() {
    return _CourseStateRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseStateRepositoryProvider &&
        other.courseRemoteDataSource == courseRemoteDataSource &&
        other.lessonLocalDataSource == lessonLocalDataSource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseRemoteDataSource.hashCode);
    hash = _SystemHash.combine(hash, lessonLocalDataSource.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseStateRepositoryRef on AsyncNotifierProviderRef<List<Course>> {
  /// The parameter `courseRemoteDataSource` of this provider.
  CourseRemoteDataSource get courseRemoteDataSource;

  /// The parameter `lessonLocalDataSource` of this provider.
  LessonLocalDataSource get lessonLocalDataSource;
}

class _CourseStateRepositoryProviderElement
    extends AsyncNotifierProviderElement<CourseStateRepository, List<Course>>
    with CourseStateRepositoryRef {
  _CourseStateRepositoryProviderElement(super.provider);

  @override
  CourseRemoteDataSource get courseRemoteDataSource =>
      (origin as CourseStateRepositoryProvider).courseRemoteDataSource;
  @override
  LessonLocalDataSource get lessonLocalDataSource =>
      (origin as CourseStateRepositoryProvider).lessonLocalDataSource;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
