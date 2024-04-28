import 'package:hive/hive.dart';
part 'lesson_progress.g.dart';

class LessonProgressDTO{
  const LessonProgressDTO({
    required this.lessonId,
    required this.lastPassedChapterId,
    required this.updatedAt
  });
  final int lessonId;
  final DateTime updatedAt;
  final int lastPassedChapterId;
}

@HiveType(typeId: 1, adapterName: "LessonProgressAdapter")
class HiveLessonProgressDTO extends HiveObject implements LessonProgressDTO{
  HiveLessonProgressDTO(this.lessonId, this.lastPassedChapterId, this.updatedAt);
  @override
  @HiveField(0)
  final int lessonId;

  @override
  @HiveField(1)
  final int lastPassedChapterId;

  @override
  @HiveField(2)
  final DateTime updatedAt;
}