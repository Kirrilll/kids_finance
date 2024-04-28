import 'package:flutter/cupertino.dart';
import 'package:kids_finance/features/courses/data/data_sources/remote_course_data_source.dart';
import 'package:kids_finance/features/courses/data/repositories/courses_repository_base.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/data_sources/local_lesson_data_source.dart';
import '../../data/mappers/lesson_adapter.dart';

part 'course_repository.g.dart';

@Riverpod(keepAlive: true)
class CourseStateRepository extends _$CourseStateRepository implements CourseRepositoryBase {
  @override
  Future<List<Course>> build({required CourseRemoteDataSource courseRemoteDataSource, required LessonLocalDataSource lessonLocalDataSource}) async {
    return getAll();
  }

  @override
  Future<List<Course>> getAll() async {
    return (await courseRemoteDataSource.getAll()).match(
            (l) => [],
            (r) async {
      final lessonsProgress = await lessonLocalDataSource.selectAll();
      return r
          .map((courseDto) => Course(
              id: courseDto.id,
              title: courseDto.title,
              logo: courseDto.logo,
              description: courseDto.description,
              lessons: courseDto.lessons
                  .map((lessonDto) => LessonAdapter.fromDto(
                      lessonDto,
                      lessonsProgress
                          .where(
                              (lProgress) => lProgress.lessonId == lessonDto.id)
                          .firstOrNull))
                  .toList()))
          .toList();
    });
  }

  @override
  Future<Lesson?> getLastUpdated() async {
    final lessonProgressDto =
        await lessonLocalDataSource.getLastUpdatedLesson();
    if (lessonProgressDto == null) return null;
    final lessonDto = (await courseRemoteDataSource.getAll())
        .getOrElse((l) => [])
        .map((e) => e.lessons)
        .reduce((prev, curr) => [...prev, ...curr])
        .where((lesson) => lesson.id == lessonProgressDto.lessonId)
        .firstOrNull;
    if (lessonDto != null) LessonAdapter.fromDto(lessonDto, lessonProgressDto);
    return null;
  }

  @override
  Future<void> updateLessonProgress(
      {required int courseId,
      required int lessonId,
      required int passedChapterId}) async {
    state = state.whenData((courses) => courses
        .map((course) => course.copyWith.call(
            lessons: course.lessons
                .map((lesson) => lesson.id == lessonId
                    ? lesson.copyWith.call(lastPassedChapterId: passedChapterId)
                    : lesson)
                .toList()))
        .toList());
    await lessonLocalDataSource.updateLessonProgress(
        courseId: courseId,
        lessonId: lessonId,
        passedChapterId: passedChapterId);
  }
}
