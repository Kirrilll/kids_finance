// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Course {
  int get id => throw _privateConstructorUsedError;
  String get header => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<CourseUnit> get units => throw _privateConstructorUsedError;
  int get currentChapter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {int id,
      String header,
      String logo,
      String description,
      List<CourseUnit> units,
      int currentChapter});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? logo = null,
    Object? description = null,
    Object? units = null,
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
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<CourseUnit>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
          _$CourseImpl value, $Res Function(_$CourseImpl) then) =
      __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String header,
      String logo,
      String description,
      List<CourseUnit> units,
      int currentChapter});
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
      _$CourseImpl _value, $Res Function(_$CourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? logo = null,
    Object? description = null,
    Object? units = null,
    Object? currentChapter = null,
  }) {
    return _then(_$CourseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<CourseUnit>,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseImpl extends _Course with DiagnosticableTreeMixin {
  const _$CourseImpl(
      {required this.id,
      required this.header,
      required this.logo,
      required this.description,
      required final List<CourseUnit> units,
      this.currentChapter = 0})
      : _units = units,
        super._();

  @override
  final int id;
  @override
  final String header;
  @override
  final String logo;
  @override
  final String description;
  final List<CourseUnit> _units;
  @override
  List<CourseUnit> get units {
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  @JsonKey()
  final int currentChapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Course(id: $id, header: $header, logo: $logo, description: $description, units: $units, currentChapter: $currentChapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Course'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('header', header))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('units', units))
      ..add(DiagnosticsProperty('currentChapter', currentChapter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._units, _units) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, header, logo, description,
      const DeepCollectionEquality().hash(_units), currentChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);
}

abstract class _Course extends Course {
  const factory _Course(
      {required final int id,
      required final String header,
      required final String logo,
      required final String description,
      required final List<CourseUnit> units,
      final int currentChapter}) = _$CourseImpl;
  const _Course._() : super._();

  @override
  int get id;
  @override
  String get header;
  @override
  String get logo;
  @override
  String get description;
  @override
  List<CourseUnit> get units;
  @override
  int get currentChapter;
  @override
  @JsonKey(ignore: true)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
