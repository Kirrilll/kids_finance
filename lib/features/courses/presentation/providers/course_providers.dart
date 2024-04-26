import 'package:flutter/material.dart';
import 'package:kids_finance/features/courses/data/data_sources/hive/course.dart';
import 'package:kids_finance/features/courses/data/data_sources/hive/progress.dart';
import 'package:kids_finance/features/courses/data/mappers/course_mapper.dart';
import 'package:kids_finance/features/courses/data/mappers/progress_mapper.dart';
import 'package:kids_finance/features/courses/data/repositories/course.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'course_providers.g.dart';

@Riverpod(keepAlive: true)
CourseDataSource courseLocalDataSource(CourseLocalDataSourceRef ref) {
  final hiveDataSource = HiveCourseDataSource();
  return hiveDataSource;
}

@Riverpod(keepAlive: true)
CourseProgressDataSource courseProgressDataSource(
    CourseProgressDataSourceRef ref) {
  final hiveDataSource = HiveLessonProgressDataSource();
  return hiveDataSource;
}

@Riverpod()
CourseMapper courseMapper(CourseMapperRef ref) {
  final courseMapper = CourseMapper();
  return courseMapper;
}

@Riverpod()
CourseProgressMapper progressMapper(ProgressMapperRef ref) {
  final progressMapper = CourseProgressMapper(mapper: LessonProgressMapper());
  return progressMapper;
}

@riverpod
CourseRepository courseRepository(CourseRepositoryRef ref) {
  final dataSource = ref.read(courseLocalDataSourceProvider);
  final courseMapper = ref.read(courseMapperProvider);
  final progressDataSource = ref.read(courseProgressDataSourceProvider);
  final progressMapper = ref.read(progressMapperProvider);

  return DefaultCourseRepository(
      dataSource: dataSource,
      courseMapper: courseMapper,
      progressDataSource: progressDataSource,
      progressMapper: progressMapper);
}
