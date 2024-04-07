import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

class HiveLessonProgressDataSource {
  HiveLessonProgressDataSource() {
    Hive.openBox<HiveLessonProgress>(_boxName).then((value) => _box = value);
  }

  static const _boxName = 'lesson_progress';
  late Box<HiveLessonProgress> _box;

  Future<int> insert(HiveLessonProgress progress) async {
    return await _box.add(progress);
  }

  Future<void> update(HiveLessonProgress progress) async {
    return await _box.put(progress.lessonId, progress);
  }
}
