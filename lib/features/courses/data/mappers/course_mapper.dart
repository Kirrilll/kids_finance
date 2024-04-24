import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/course.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/mappers/lesson_mapper.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson_progress.dart';

@injectable
class CourseMapper {
  CourseMapper({this.lessonMapper});
  LessonMapper? lessonMapper;
  Course convertDTO(CourseDTO dto, CourseProgressDTO progressDTO) {
    return Course(
        id: dto.id,
        header: dto.header,
        logo: dto.logo,
        description: dto.description,
        lessons: dto.lessons.map((e) => lessonMapper!.convertDTO(e)).toList(),
        progress: CourseProgress(
            courseId: progressDTO.courseId,
            lastLesson: LessonProgress(
                lastChapterIndex: progressDTO.lastLesson.lastChapterIndex,
                lessonIndex: progressDTO.lastLesson.lessonIndex)));
  }

  CourseDTO convert(Course course) {
    return CourseDTO(
        id: course.id,
        header: course.header,
        logo: course.logo,
        description: course.description,
        lessons: course.lessons.map((e) => lessonMapper!.convert(e)).toList());
  }
}
