import 'package:kids_finance/features/courses/data/repositories/course.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson_progress.dart';

abstract interface class ProgressUseCase {
  void finishChapter(int id);
  void finishLesson(int id);
}

class DefaultProgressUseCase implements ProgressUseCase {
  DefaultProgressUseCase({required this.repository});
  CourseRepository repository;

  @override
  void finishChapter(int id) {
    CourseProgress progress;
    repository.selectById(id).then((course) {
      if (course == null) {
        throw Exception("курс не найден");
      } else {
        progress = CourseProgress(
            courseId: id,
            lastLesson: LessonProgress(
                lastChapterIndex:
                    course.progress!.lastLesson.lastChapterIndex + 1,
                lessonIndex: course.progress!.lastLesson.lessonIndex));
        repository.save(progress);
      }
      return;
    });
  }

  @override
  void finishLesson(int id) {
    CourseProgress progress;
    repository.selectById(id).then((course) {
      if (course == null) {
        throw Exception("курс не найден");
      } else {
        progress = CourseProgress(
            courseId: id,
            lastLesson: LessonProgress(
                lastChapterIndex: course.progress!.lastLesson.lastChapterIndex,
                lessonIndex: course.progress!.lastLesson.lessonIndex + 1));
        repository.save(progress);
      }
      return;
    });
  }
}
