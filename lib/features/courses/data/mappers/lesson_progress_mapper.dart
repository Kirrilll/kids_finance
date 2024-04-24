import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson_progress.dart';

class LessonProgressMapper{
  LessonProgress convertDTO(LessonProgressDTO dto){
    return LessonProgress(
      lessonIndex: dto.lessonIndex,
      lastChapterIndex: dto.lastChapterIndex
    );
  }

  LessonProgressDTO convert(LessonProgress progress){
    return LessonProgressDTO(
      lessonIndex: progress.lessonIndex,
      lastChapterIndex: progress.lastChapterIndex
      );
  }
}