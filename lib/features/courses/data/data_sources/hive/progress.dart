import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';

abstract class CourseProgressDataSource {
  Future<CourseProgressDTO?> selectByCourseId(int courseId);
  Future<List<CourseProgressDTO>> selectAll();
  Future<void> insertOrUpdate(int courseId, CourseProgressDTO progress);
}

@Singleton(
    as: CourseProgressDataSource, env: [Environment.dev], signalsReady: true)
class HiveLessonProgressDataSource implements CourseProgressDataSource {
  static const _boxName = 'progress';
  late Box<HiveCourseProgressDTO> _box;

  @PostConstruct()
  void init() async {
    if (Hive.isBoxOpen(_boxName)) {
      _box = Hive.box(_boxName);
    } else {
      _box = await Hive.openBox<HiveCourseProgressDTO>(_boxName);
    }
    while (_box.isNotEmpty) {
      _box.deleteAt(0);
    }
    GetIt.instance.signalReady(this);
  }

  @override
  Future<CourseProgressDTO?> selectByCourseId(int courseId) async {
    return _box.get(courseId);
  }

  @override
  Future<void> insertOrUpdate(int courseId, CourseProgressDTO progress) async {
    return await _box.put(courseId, (_createHiveLessonProgress(progress)));
  }

  @override
  Future<List<CourseProgressDTO>> selectAll() async {
    return _box.values.toList();
  }

  HiveCourseProgressDTO _createHiveLessonProgress(CourseProgressDTO progress) =>
      HiveCourseProgressDTO(progress.courseId, progress.lastLesson);
}
