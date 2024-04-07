import 'package:kids_finance/features/courses/data/data_sources/hive/lesson_progress.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

abstract interface class LessonProgressRepository{
  Future<int> insert(LessonProgress progress);
  Future<void> update(LessonProgress progress);
} 

class HiveLessonProgressRepository implements LessonProgressRepository {
  HiveLessonProgressRepository({
    required this.dataSource,
  });

  final HiveLessonProgressDataSource dataSource;

  @override
  Future<int> insert(LessonProgress progress) {
    return dataSource.insert(_createHiveLessonProgress(progress));
  }

  @override
  Future<void> update(LessonProgress progress) {
    return dataSource.update(_createHiveLessonProgress(progress));
  }

  HiveLessonProgress _createHiveLessonProgress(LessonProgress progress) => 
    HiveLessonProgress(progress.lastChapterId, progress.lessonId);
}