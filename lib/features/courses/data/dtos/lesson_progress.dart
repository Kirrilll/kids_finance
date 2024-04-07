import 'package:hive/hive.dart';

abstract class LessonProgress{
  const LessonProgress({
    required this.lessonId,
    required this.lastChapterId,
  });
  final int lessonId;
  final int lastChapterId;
}

@HiveType(typeId: 0)
class HiveLessonProgress extends HiveObject implements LessonProgress{
  HiveLessonProgress(this.lastChapterId, this.lessonId);

  @override
  @HiveField(0)
  final int lastChapterId;
  
  @override
  @HiveField(1)
  final int lessonId;
}