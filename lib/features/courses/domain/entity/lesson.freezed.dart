// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Lesson {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  List<Chapter> get chapters => throw _privateConstructorUsedError;
  List<EPassingType> get passingType => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get lastPassedChapterId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {int id,
      String title,
      String logo,
      List<Chapter> chapters,
      List<EPassingType> passingType,
      DateTime? updatedAt,
      int? lastPassedChapterId});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logo = null,
    Object? chapters = null,
    Object? passingType = null,
    Object? updatedAt = freezed,
    Object? lastPassedChapterId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      passingType: null == passingType
          ? _value.passingType
          : passingType // ignore: cast_nullable_to_non_nullable
              as List<EPassingType>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPassedChapterId: freezed == lastPassedChapterId
          ? _value.lastPassedChapterId
          : lastPassedChapterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
          _$LessonImpl value, $Res Function(_$LessonImpl) then) =
      __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String logo,
      List<Chapter> chapters,
      List<EPassingType> passingType,
      DateTime? updatedAt,
      int? lastPassedChapterId});
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
      _$LessonImpl _value, $Res Function(_$LessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? logo = null,
    Object? chapters = null,
    Object? passingType = null,
    Object? updatedAt = freezed,
    Object? lastPassedChapterId = freezed,
  }) {
    return _then(_$LessonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      passingType: null == passingType
          ? _value._passingType
          : passingType // ignore: cast_nullable_to_non_nullable
              as List<EPassingType>,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPassedChapterId: freezed == lastPassedChapterId
          ? _value.lastPassedChapterId
          : lastPassedChapterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LessonImpl extends _Lesson with DiagnosticableTreeMixin {
  const _$LessonImpl(
      {required this.id,
      required this.title,
      required this.logo,
      required final List<Chapter> chapters,
      required final List<EPassingType> passingType,
      this.updatedAt = null,
      this.lastPassedChapterId = null})
      : _chapters = chapters,
        _passingType = passingType,
        super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String logo;
  final List<Chapter> _chapters;
  @override
  List<Chapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  final List<EPassingType> _passingType;
  @override
  List<EPassingType> get passingType {
    if (_passingType is EqualUnmodifiableListView) return _passingType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passingType);
  }

  @override
  @JsonKey()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final int? lastPassedChapterId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lesson(id: $id, title: $title, logo: $logo, chapters: $chapters, passingType: $passingType, updatedAt: $updatedAt, lastPassedChapterId: $lastPassedChapterId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lesson'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('chapters', chapters))
      ..add(DiagnosticsProperty('passingType', passingType))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('lastPassedChapterId', lastPassedChapterId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            const DeepCollectionEquality()
                .equals(other._passingType, _passingType) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastPassedChapterId, lastPassedChapterId) ||
                other.lastPassedChapterId == lastPassedChapterId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      logo,
      const DeepCollectionEquality().hash(_chapters),
      const DeepCollectionEquality().hash(_passingType),
      updatedAt,
      lastPassedChapterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);
}

abstract class _Lesson extends Lesson {
  const factory _Lesson(
      {required final int id,
      required final String title,
      required final String logo,
      required final List<Chapter> chapters,
      required final List<EPassingType> passingType,
      final DateTime? updatedAt,
      final int? lastPassedChapterId}) = _$LessonImpl;
  const _Lesson._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get logo;
  @override
  List<Chapter> get chapters;
  @override
  List<EPassingType> get passingType;
  @override
  DateTime? get updatedAt;
  @override
  int? get lastPassedChapterId;
  @override
  @JsonKey(ignore: true)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
