import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kids_finance/features/courses/data/data_sources/hive_local_lesson_data_source.dart';
import 'package:kids_finance/features/courses/data/data_sources/local_lesson_data_source.dart';
import 'package:kids_finance/features/courses/data/data_sources/mock_remote_data_source.dart';
import 'package:kids_finance/features/courses/data/data_sources/remote_course_data_source.dart';
import 'package:kids_finance/features/courses/data/repositories/courses_repository_base.dart';
import 'package:kids_finance/features/courses/domain/repositories/course_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entity/course.dart';

part 'course_providers.g.dart';

@Riverpod(keepAlive: true)
CourseRemoteDataSource courseRemoteDataSource(CourseRemoteDataSourceRef ref) {
  return MockRemoteDataSource();
}

@Riverpod(keepAlive: true)
LessonLocalDataSource lessonLocalDataSource(LessonLocalDataSourceRef ref) {
  return HiveLocalLessonDataSource()..init();
}


@riverpod
Future<Course> courseSelect(CourseSelectRef ref, {required int courseId}) {
  final courseRemoteDataSource = ref.read(courseRemoteDataSourceProvider);
  final courseLocalDataSource = ref.read(lessonLocalDataSourceProvider);

  return ref.watch(courseStateRepositoryProvider
      .call(courseRemoteDataSource: courseRemoteDataSource, lessonLocalDataSource: courseLocalDataSource)
      .selectAsync((courses) => courses
        .where((course) => course.id == courseId)
        .first)
      );
}