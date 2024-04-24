import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'chapter.g.dart';

class ChapterDTO{
  final String content;
  final Duration duration;
  
  const ChapterDTO({
    required this.content,
    required this.duration
  });
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 5, adapterName: "ChapterAdapter")
class HiveChapterDTO extends HiveObject implements ChapterDTO{
  HiveChapterDTO(this.content, this.duration);

  @override
  @HiveField(0)
  final String content;

  @override
  @HiveField(1)
  final Duration duration;
}