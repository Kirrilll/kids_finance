import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/mappers/lesson_progress_mapper.dart';
import 'package:kids_finance/features/courses/domain/entity/course_progress.dart';

class CourseProgressMapper{
  CourseProgressMapper({
    required this.lessonMapper
  });
  LessonProgressMapper lessonMapper;
  CourseProgress convertDTO(CourseProgressDTO dto){
    return CourseProgress(
      courseId: dto.courseId,
      lastLesson: lessonMapper.convertDTO(dto.lastLesson));
  }

  CourseProgressDTO convert(CourseProgress course){
    return CourseProgressDTO(
      courseId: course.courseId,
      lastLesson: lessonMapper.convert(course.lastLesson)
      );
  }
}