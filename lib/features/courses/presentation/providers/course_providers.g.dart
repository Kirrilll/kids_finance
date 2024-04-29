// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseRemoteDataSourceHash() =>
    r'6e033c1c6024635d4fd6d153eaa33bdfddd35a82';

/// See also [courseRemoteDataSource].
@ProviderFor(courseRemoteDataSource)
final courseRemoteDataSourceProvider =
    Provider<CourseRemoteDataSource>.internal(
  courseRemoteDataSource,
  name: r'courseRemoteDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$courseRemoteDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CourseRemoteDataSourceRef = ProviderRef<CourseRemoteDataSource>;
String _$lessonLocalDataSourceHash() =>
    r'1fcf8c229a219edd1a4d472691d1f75f138d6b1d';

/// See also [lessonLocalDataSource].
@ProviderFor(lessonLocalDataSource)
final lessonLocalDataSourceProvider = Provider<LessonLocalDataSource>.internal(
  lessonLocalDataSource,
  name: r'lessonLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lessonLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LessonLocalDataSourceRef = ProviderRef<LessonLocalDataSource>;
String _$courseSelectHash() => r'2444947f8ae218334bb18865bb0237e20ad7f974';

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

/// See also [courseSelect].
@ProviderFor(courseSelect)
const courseSelectProvider = CourseSelectFamily();

/// See also [courseSelect].
class CourseSelectFamily extends Family<AsyncValue<Course>> {
  /// See also [courseSelect].
  const CourseSelectFamily();

  /// See also [courseSelect].
  CourseSelectProvider call({
    required int courseId,
  }) {
    return CourseSelectProvider(
      courseId: courseId,
    );
  }

  @override
  CourseSelectProvider getProviderOverride(
    covariant CourseSelectProvider provider,
  ) {
    return call(
      courseId: provider.courseId,
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
  String? get name => r'courseSelectProvider';
}

/// See also [courseSelect].
class CourseSelectProvider extends AutoDisposeFutureProvider<Course> {
  /// See also [courseSelect].
  CourseSelectProvider({
    required int courseId,
  }) : this._internal(
          (ref) => courseSelect(
            ref as CourseSelectRef,
            courseId: courseId,
          ),
          from: courseSelectProvider,
          name: r'courseSelectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseSelectHash,
          dependencies: CourseSelectFamily._dependencies,
          allTransitiveDependencies:
              CourseSelectFamily._allTransitiveDependencies,
          courseId: courseId,
        );

  CourseSelectProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.courseId,
  }) : super.internal();

  final int courseId;

  @override
  Override overrideWith(
    FutureOr<Course> Function(CourseSelectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CourseSelectProvider._internal(
        (ref) => create(ref as CourseSelectRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        courseId: courseId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Course> createElement() {
    return _CourseSelectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseSelectProvider && other.courseId == courseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, courseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseSelectRef on AutoDisposeFutureProviderRef<Course> {
  /// The parameter `courseId` of this provider.
  int get courseId;
}

class _CourseSelectProviderElement
    extends AutoDisposeFutureProviderElement<Course> with CourseSelectRef {
  _CourseSelectProviderElement(super.provider);

  @override
  int get courseId => (origin as CourseSelectProvider).courseId;
}

String _$lastUpdatedLessonHash() => r'ec3c5d721611c11b6516c79cb38c34f7de4c5d0b';

/// See also [lastUpdatedLesson].
@ProviderFor(lastUpdatedLesson)
final lastUpdatedLessonProvider = AutoDisposeFutureProvider<Lesson?>.internal(
  lastUpdatedLesson,
  name: r'lastUpdatedLessonProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lastUpdatedLessonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LastUpdatedLessonRef = AutoDisposeFutureProviderRef<Lesson?>;
String _$lessonSelectHash() => r'58e2b345d8e69fa3ca7ef44d75f664e634a406b9';

/// See also [lessonSelect].
@ProviderFor(lessonSelect)
const lessonSelectProvider = LessonSelectFamily();

/// See also [lessonSelect].
class LessonSelectFamily extends Family<AsyncValue<Lesson>> {
  /// See also [lessonSelect].
  const LessonSelectFamily();

  /// See also [lessonSelect].
  LessonSelectProvider call({
    required int lessonId,
  }) {
    return LessonSelectProvider(
      lessonId: lessonId,
    );
  }

  @override
  LessonSelectProvider getProviderOverride(
    covariant LessonSelectProvider provider,
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
  String? get name => r'lessonSelectProvider';
}

/// See also [lessonSelect].
class LessonSelectProvider extends AutoDisposeFutureProvider<Lesson> {
  /// See also [lessonSelect].
  LessonSelectProvider({
    required int lessonId,
  }) : this._internal(
          (ref) => lessonSelect(
            ref as LessonSelectRef,
            lessonId: lessonId,
          ),
          from: lessonSelectProvider,
          name: r'lessonSelectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lessonSelectHash,
          dependencies: LessonSelectFamily._dependencies,
          allTransitiveDependencies:
              LessonSelectFamily._allTransitiveDependencies,
          lessonId: lessonId,
        );

  LessonSelectProvider._internal(
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
  Override overrideWith(
    FutureOr<Lesson> Function(LessonSelectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LessonSelectProvider._internal(
        (ref) => create(ref as LessonSelectRef),
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
  AutoDisposeFutureProviderElement<Lesson> createElement() {
    return _LessonSelectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LessonSelectProvider && other.lessonId == lessonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lessonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LessonSelectRef on AutoDisposeFutureProviderRef<Lesson> {
  /// The parameter `lessonId` of this provider.
  int get lessonId;
}

class _LessonSelectProviderElement
    extends AutoDisposeFutureProviderElement<Lesson> with LessonSelectRef {
  _LessonSelectProviderElement(super.provider);

  @override
  int get lessonId => (origin as LessonSelectProvider).lessonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
