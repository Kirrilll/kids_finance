import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/data_sources/hive/course.dart';
import 'package:kids_finance/features/courses/data/data_sources/hive/progress.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
import 'package:kids_finance/features/courses/data/mappers/course_mapper.dart';
import 'package:kids_finance/features/courses/data/mappers/progress_mapper.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';

abstract class CourseRepository {
  Future<void> save(CourseProgress progress);
  Future<Course?> selectById(int courseId);
  Future<List<Course>> selectAll();
  Future<List<Course>> selectCompleted();
}

@Injectable(as: CourseRepository, env: [Environment.dev])
class DefaultCourseRepository implements CourseRepository {
  DefaultCourseRepository(
      {this.dataSource,
      this.courseMapper,
      this.progressDataSource,
      this.progressMapper});

  final CourseProgressMapper? progressMapper;
  final CourseMapper? courseMapper;
  final CourseDataSource? dataSource;
  final CourseProgressDataSource? progressDataSource;

  @override
  Future<Course?> selectById(int courseId) async {
    var courseDto = await dataSource!.selectById(courseId);
    var progressDto = await progressDataSource!.selectByCourseId(courseId);

    progressDto ??= CourseProgressDTO(
        courseId: courseDto.id,
        lastLesson: LessonProgressDTO(lessonIndex: 0, lastChapterIndex: 0));

    var course = courseMapper!.convertDTO(courseDto, progressDto!);

    return Future(() => course);
  }

  @override
  Future<List<Course>> selectAll() async {
    var courses = await dataSource!.selectAll();
    var progress = await progressDataSource!.selectAll();

    progress = progress.map((e) => e as CourseProgressDTO).toList();
    List<Course> result = [];
    for (var i = 0; i < courses!.length; i++) {
      CourseProgressDTO? prog = null;
      for (var j = 0; j < progress.length; j++) {
        if (progress[j].courseId == courses[i].id) {
          prog = progress[j];
          break;
        }
      }
      if (prog == null) {
        prog = CourseProgressDTO(
            courseId: courses[i].id,
            lastLesson: LessonProgressDTO(
              lessonIndex: 0,
              lastChapterIndex: 0,
            ));
      }
      result.add(courseMapper!.convertDTO(courses[i], prog) as Course);
    }
    return Future(() => result);
  }

  @override
  Future<List<Course>> selectCompleted() async {
    var courses = await selectAll();
    courses = courses
        .where((element) =>
            element.progress!.lastLesson.lessonIndex >= element.lessons.length)
        .toList();
    return courses;
  }

  @override
  Future<void> save(CourseProgress progress) async {
    return progressDataSource!
        .insertOrUpdate(progress.courseId, progressMapper!.convert(progress));
  }
}
