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
  String get header => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  List<Chapter> get chapters => throw _privateConstructorUsedError;
  int get currentChapter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String header, String logo, List<Chapter> chapters, int currentChapter});
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
    Object? header = null,
    Object? logo = null,
    Object? chapters = null,
    Object? currentChapter = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
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
      {String header, String logo, List<Chapter> chapters, int currentChapter});
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
    Object? header = null,
    Object? logo = null,
    Object? chapters = null,
    Object? currentChapter = null,
  }) {
    return _then(_$LessonImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LessonImpl extends _Lesson with DiagnosticableTreeMixin {
  const _$LessonImpl(
      {required this.header,
      required this.logo,
      required final List<Chapter> chapters,
      this.currentChapter = 0})
      : _chapters = chapters,
        super._();

  @override
  final String header;
  @override
  final String logo;
  final List<Chapter> _chapters;
  @override
  List<Chapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  @JsonKey()
  final int currentChapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Lesson(header: $header, logo: $logo, chapters: $chapters, currentChapter: $currentChapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Lesson'))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('chapters', chapters))
      ..add(DiagnosticsProperty('currentChapter', currentChapter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, header, logo,
      const DeepCollectionEquality().hash(_chapters), currentChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);
}

abstract class _Lesson extends Lesson {
  const factory _Lesson(
      {required final String header,
      required final String logo,
      required final List<Chapter> chapters,
      final int currentChapter}) = _$LessonImpl;
  const _Lesson._() : super._();

  @override
  String get header;
  @override
  String get logo;
  @override
  List<Chapter> get chapters;
  @override
  int get currentChapter;
  @override
  @JsonKey(ignore: true)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
