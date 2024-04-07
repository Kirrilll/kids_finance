import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

abstract class CourseUnitProgress{
  const CourseUnitProgress({
    required this.lastChapterId,
  });
  final LessonProgress lastChapterId;
}

@HiveType(typeId: 0)
class HiveCourseUnitProgress extends HiveObject implements CourseUnitProgress{
  HiveCourseUnitProgress(this.lastChapterId);

  @override
  @HiveField(0)
  final LessonProgress lastChapterId;
}