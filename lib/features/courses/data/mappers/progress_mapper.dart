import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson_progress.dart';

@injectable
class CourseProgressMapper {
  CourseProgressMapper({required this.mapper});
  LessonProgressMapper mapper;
  CourseProgressDTO convert(CourseProgress progress) {
    return CourseProgressDTO(
        courseId: progress.courseId,
        lastLesson: mapper.convert(progress.lastLesson));
  }

  CourseProgress convertDTO(CourseProgressDTO dto) {
    return CourseProgress(
        courseId: dto.courseId, lastLesson: mapper.convertDTO(dto.lastLesson));
  }
}

@injectable
class LessonProgressMapper {
  LessonProgressDTO convert(LessonProgress progress) {
    return LessonProgressDTO(
        lessonIndex: progress.lessonIndex,
        lastChapterIndex: progress.lastChapterIndex);
  }

  LessonProgress convertDTO(LessonProgressDTO dto) {
    return LessonProgress(
        lessonIndex: dto.lessonIndex, lastChapterIndex: dto.lastChapterIndex);
  }
}
