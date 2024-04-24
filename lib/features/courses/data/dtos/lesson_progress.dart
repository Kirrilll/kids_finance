import 'package:hive/hive.dart';
part 'lesson_progress.g.dart';

class LessonProgressDTO{
  const LessonProgressDTO({
    required this.lessonIndex,
    required this.lastChapterIndex,
  });
  final int lessonIndex;
  final int lastChapterIndex;
}

@HiveType(typeId: 1, adapterName: "LessonProgressAdapter")
class HiveLessonProgressDTO extends HiveObject implements LessonProgressDTO{
  HiveLessonProgressDTO(this.lessonIndex, this.lastChapterIndex);
  @override
  @HiveField(0)
  final int lessonIndex;
  @override
  @HiveField(1)
  final int lastChapterIndex;
}