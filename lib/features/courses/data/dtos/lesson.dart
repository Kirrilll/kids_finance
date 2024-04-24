import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/dtos/chapter.dart';
import 'package:json_annotation/json_annotation.dart';
part 'lesson.g.dart';

class LessonDTO{
  final String header;
  final List<ChapterDTO> chapters;
  final String logo;

  const LessonDTO({
    required this.header,
    required this.chapters,
    required this.logo,
  });
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 4, adapterName: "LessonAdapter")
class HiveLessonDTO extends HiveObject implements LessonDTO{
  HiveLessonDTO(this.chapters, this.header, this.logo);

  @override
  @HiveField(0)
  final String header;

  @override
  @HiveField(1)
  final List<ChapterDTO> chapters;

  @override
  @HiveField(2)
  final String logo;
}