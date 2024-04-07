import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
part 'course_unit.freezed.dart';

@freezed
class CourseUnit with _$CourseUnit {
    const CourseUnit._();
  const factory CourseUnit(
    {
    required int id,
    required String header,
    required List<Lesson> lessons,
    @Default(0) int currentChapter
  }) = _CourseUnit;

  Duration get duration => lessons
  .map((e) => e.duration)
  .reduce((value, element) => Duration (minutes: value.inMinutes + element.inMinutes));
}