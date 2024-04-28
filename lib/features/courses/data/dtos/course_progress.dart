import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
part 'course_progress.g.dart';

class CourseProgressDTO {
  const CourseProgressDTO({
    required this.courseId,
    required this.lastLesson,
  });

  final int courseId;
  final LessonProgressDTO lastLesson;
}

@HiveType(typeId: 0, adapterName: "ProgressAdapter")
class HiveCourseProgressDTO extends HiveObject implements CourseProgressDTO {
  HiveCourseProgressDTO(this.courseId, this.lastLesson);

  @override
  @HiveField(0)
  final int courseId;

  @override
  @HiveField(1)
  final LessonProgressDTO lastLesson;
}
