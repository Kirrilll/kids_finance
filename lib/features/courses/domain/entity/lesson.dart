import 'package:kids_finance/features/courses/domain/entity/chapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'e_passing_type.dart';
part 'lesson.freezed.dart';

@freezed
class Lesson with _$Lesson {
  const Lesson._();
  const factory Lesson(
      {
      required int id,
      required String title,
      required String logo,
      required List<Chapter> chapters,
      required List<EPassingType> passingType,
      @Default(null)  DateTime? updatedAt,
      @Default(null) int? lastPassedChapterId}) = _Lesson;

  Duration get duration => chapters.map((e) => e.duration).reduce((value, element) => Duration(minutes: value.inMinutes + element.inMinutes));
  bool get isCompleted => lastPassedChapterId == chapters.lastOrNull?.id;

}
