import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';

abstract class CourseRepositoryBase {
  Future<List<Course>> getAll();
  // Future<Lesson?> getLastUpdated();
  Future<void> updateLessonProgress({required int lessonId, required int passedChapterId});
}