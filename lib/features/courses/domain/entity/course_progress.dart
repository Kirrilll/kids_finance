import 'package:kids_finance/features/courses/domain/entity/lesson_progress.dart';

class CourseProgress{
  const CourseProgress({
    required this.courseId,
    required this.lastLesson,
  });
  final int courseId;
  final LessonProgress lastLesson;
}