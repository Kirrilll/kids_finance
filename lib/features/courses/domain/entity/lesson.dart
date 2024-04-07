import 'package:kids_finance/features/courses/domain/entity/chapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  const Lesson._();
  const factory Lesson(
    {
    required int id,
    required String header,
    required String logo,
    required List<Chapter> chapters,
    @Default(0) int currentChapter
  }) = _Lesson;

  Duration get duration => chapters
  .map((e) => e.duration)
  .reduce((value, element) => Duration (minutes: value.inMinutes + element.inMinutes));
}