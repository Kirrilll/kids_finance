import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
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
    required List<Lesson> lessons,
    CourseProgress? progress
  }) = _Course;

  Duration get duration {
    if(lessons.isEmpty) return const Duration(minutes: 0);
  return lessons
      .map((e) => e.duration)
      .reduce((value, element) => Duration (minutes: value.inMinutes + element.inMinutes));
  }
}