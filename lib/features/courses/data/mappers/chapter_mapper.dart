import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/chapter.dart';
import 'package:kids_finance/features/courses/domain/entity/chapter.dart';

@injectable
class ChapterMapper {
  Chapter convertDTO(ChapterDTO dto) {
    return Chapter(content: dto.content, duration: dto.duration);
  }

  ChapterDTO convert(Chapter chapter) {
    return ChapterDTO(content: chapter.content, duration: chapter.duration);
  }
}
