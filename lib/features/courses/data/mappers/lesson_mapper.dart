import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson.dart';
import 'package:kids_finance/features/courses/data/mappers/chapter_mapper.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';

@injectable
class LessonMapper {
  LessonMapper({this.chapterMapper});
  ChapterMapper? chapterMapper;

  LessonDTO convert(Lesson lesson) {
    return LessonDTO(
      header: lesson.header,
      chapters: lesson.chapters.map((e) => chapterMapper!.convert(e)).toList(),
      logo: lesson.logo,
    );
  }

  Lesson convertDTO(LessonDTO dto) {
    return Lesson(
      header: dto.header,
      logo: dto.logo,
      chapters: dto.chapters.map((e) => chapterMapper!.convertDTO(e)).toList(),
    );
  }
}
