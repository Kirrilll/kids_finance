import 'package:kids_finance/features/courses/data/dtos/lesson.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
import 'package:kids_finance/features/courses/domain/entity/chapter.dart';
import 'package:kids_finance/features/courses/domain/entity/e_passing_type.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';

class LessonAdapter {
  static Lesson fromDto(LessonDTO lessonDTO, LessonProgressDTO? progress) {
    return Lesson(
        id: lessonDTO.id,
        title: lessonDTO.header,
        logo: lessonDTO.logo,
        chapters: lessonDTO.chapters
            .map((chapterDto) => Chapter(id: chapterDto.id, content: chapterDto.content, duration: chapterDto.duration))
            .toList(),
        passingType: [EPassingType.read],
        updatedAt: progress?.updatedAt,
        lastPassedChapterId: progress?.lastPassedChapterId
    );
  }
}