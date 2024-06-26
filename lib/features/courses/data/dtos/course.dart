import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson.dart';
import 'package:json_annotation/json_annotation.dart';
part 'course.g.dart';

class CourseDTO {
  final int id;
  final String title;
  final String logo;
  final String description;
  final List<LessonDTO> lessons;

  const CourseDTO(
      {required this.id,
      required this.title,
      required this.logo,
      required this.description,
      required this.lessons});
}

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 2, adapterName: "CourseAdapter")
class HiveCourseDTO extends HiveObject implements CourseDTO {
  HiveCourseDTO(
      this.id, this.lessons, this.title, this.logo, this.description);

  @override
  @HiveField(0)
  final int id;

  @override
  @HiveField(1)
  final List<LessonDTO> lessons;

  @override
  @HiveField(2)
  final String title;

  @override
  @HiveField(3)
  final String logo;

  @override
  @HiveField(4)
  final String description;
}
