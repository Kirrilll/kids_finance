import 'package:kids_finance/features/courses/data/repositories/course.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';

abstract interface class CourseUseCase {
  Future<Lesson?> getLastLesson(int courseId);
}

class DefaultCourseUseCase implements CourseUseCase {
  DefaultCourseUseCase({required this.repository});
  CourseRepository repository;
  @override
  Future<Lesson?> getLastLesson(int courseId) async {
    var result = await repository.selectById(courseId);
    if (result == null) {
      return Future(() => null);
    }
    return Future(
        () => result.lessons[result.progress!.lastLesson.lessonIndex]);
  }
}
