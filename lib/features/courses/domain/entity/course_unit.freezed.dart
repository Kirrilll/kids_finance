// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseUnit {
  int get id => throw _privateConstructorUsedError;
  String get header => throw _privateConstructorUsedError;
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  int get currentChapter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseUnitCopyWith<CourseUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseUnitCopyWith<$Res> {
  factory $CourseUnitCopyWith(
          CourseUnit value, $Res Function(CourseUnit) then) =
      _$CourseUnitCopyWithImpl<$Res, CourseUnit>;
  @useResult
  $Res call({int id, String header, List<Lesson> lessons, int currentChapter});
}

/// @nodoc
class _$CourseUnitCopyWithImpl<$Res, $Val extends CourseUnit>
    implements $CourseUnitCopyWith<$Res> {
  _$CourseUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? lessons = null,
    Object? currentChapter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseUnitImplCopyWith<$Res>
    implements $CourseUnitCopyWith<$Res> {
  factory _$$CourseUnitImplCopyWith(
          _$CourseUnitImpl value, $Res Function(_$CourseUnitImpl) then) =
      __$$CourseUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String header, List<Lesson> lessons, int currentChapter});
}

/// @nodoc
class __$$CourseUnitImplCopyWithImpl<$Res>
    extends _$CourseUnitCopyWithImpl<$Res, _$CourseUnitImpl>
    implements _$$CourseUnitImplCopyWith<$Res> {
  __$$CourseUnitImplCopyWithImpl(
      _$CourseUnitImpl _value, $Res Function(_$CourseUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? lessons = null,
    Object? currentChapter = null,
  }) {
    return _then(_$CourseUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseUnitImpl extends _CourseUnit with DiagnosticableTreeMixin {
  const _$CourseUnitImpl(
      {required this.id,
      required this.header,
      required final List<Lesson> lessons,
      this.currentChapter = 0})
      : _lessons = lessons,
        super._();

  @override
  final int id;
  @override
  final String header;
  final List<Lesson> _lessons;
  @override
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  @JsonKey()
  final int currentChapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseUnit(id: $id, header: $header, lessons: $lessons, currentChapter: $currentChapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseUnit'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('lessons', lessons))
      ..add(DiagnosticsProperty('currentChapter', currentChapter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, header,
      const DeepCollectionEquality().hash(_lessons), currentChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseUnitImplCopyWith<_$CourseUnitImpl> get copyWith =>
      __$$CourseUnitImplCopyWithImpl<_$CourseUnitImpl>(this, _$identity);
}

abstract class _CourseUnit extends CourseUnit {
  const factory _CourseUnit(
      {required final int id,
      required final String header,
      required final List<Lesson> lessons,
      final int currentChapter}) = _$CourseUnitImpl;
  const _CourseUnit._() : super._();

  @override
  int get id;
  @override
  String get header;
  @override
  List<Lesson> get lessons;
  @override
  int get currentChapter;
  @override
  @JsonKey(ignore: true)
  _$$CourseUnitImplCopyWith<_$CourseUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
