import 'dart:collection';

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/chapter.dart';
import 'package:kids_finance/features/courses/data/dtos/course.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson.dart';

abstract class CourseDataSource {
  Future<List<CourseDTO>?> selectAll();
  Future<CourseDTO> selectById(int courseId);
  Future<void> put(CourseDTO course);
}

@Singleton(as: CourseDataSource, env: [Environment.prod], signalsReady: true)
class HiveCourseDataSource implements CourseDataSource {
  HiveCourseDataSource();

  @PostConstruct()
  void init() async {
    _box = await Hive.openBox<HiveCourseDTO>(_boxName);
    GetIt.instance.signalReady(this);
  }

  static const _boxName = 'courses';
  late Box<HiveCourseDTO> _box;

  @override
  Future<List<CourseDTO>> selectAll() async {
    return _box.values.toList();
  }

  @override
  Future<CourseDTO> selectById(int courseId) async {
    var result = _box.get(courseId);
    if (result == null) throw Exception("record not found");
    return result;
  }

  @override
  Future<void> put(CourseDTO course) async {
    return _box.put(course.id, _createHiveCourse(course));
  }

  HiveCourseDTO _createHiveCourse(CourseDTO course) => HiveCourseDTO(
      course.id,
      course.lessons
          .map((e) => HiveLessonDTO(
              e.chapters
                  .map((c) => HiveChapterDTO(c.content, c.duration))
                  .toList(),
              e.header,
              e.logo))
          .toList(),
      course.header,
      course.logo,
      course.description);
}

@Injectable(as: CourseDataSource, env: [Environment.dev])
class MockCourseDataSource implements CourseDataSource {
  MockCourseDataSource();
  HashMap<int, CourseDTO>? items;

  @PostConstruct()
  void init() async {
    items = HashMap<int, CourseDTO>.identity();
    put(CourseDTO(
        id: 0,
        header: "some header",
        logo: "logo",
        description: "description",
        lessons: [
          const LessonDTO(header: "header", logo: "logo", chapters: [
            ChapterDTO(content: "content", duration: Duration(minutes: 1))
          ])
        ]));
  }

  @override
  Future<void> put(CourseDTO course) {
    items![course.id] = course;
    return Future<void>(() {});
  }

  @override
  Future<List<CourseDTO>?> selectAll() {
    return Future(() => items!.values.toList());
  }

  @override
  Future<CourseDTO> selectById(int courseId) async {
    final elements = await selectAll();

    return Future(
        () => elements!.firstWhere((element) => element.id == courseId));
  }
}
