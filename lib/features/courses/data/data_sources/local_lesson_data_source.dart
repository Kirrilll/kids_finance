import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

import '../dtos/course_progress.dart';

abstract class LessonLocalDataSource {
  Future<LessonProgressDTO?> selectByLessonId(int lessonId);
  Future<List<LessonProgressDTO>> selectAll();
  Future<void> updateLessonProgress({ required int lessonId, required int passedChapterId});
  Future<LessonProgressDTO?> getLastUpdatedLesson();
}