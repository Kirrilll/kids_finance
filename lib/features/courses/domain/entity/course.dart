import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kids_finance/features/courses/domain/entity/course_unit.dart';
part 'course.freezed.dart';

@freezed
class Course with _$Course {
    const Course._();
  const factory Course(
    {
    required int id,
    required String header,
    required String logo,
    required String description,
    required List<CourseUnit> units,
    @Default(0) int currentChapter
  }) = _Course;

  Duration get duration => units
  .map((e) => e.duration)
  .reduce((value, element) => Duration (minutes: value.inMinutes + element.inMinutes));
}