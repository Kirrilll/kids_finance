import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_finance/features/courses/data/dtos/chapter.dart';
import 'package:kids_finance/features/courses/data/dtos/course.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/dtos/duration_adapter.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

import './container.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies(String environment) async {
  Hive.registerAdapter(ProgressAdapter()); //todo вынести
  Hive.registerAdapter(LessonProgressAdapter());
  Hive.registerAdapter(CourseAdapter());
  Hive.registerAdapter(LessonAdapter());
  Hive.registerAdapter(ChapterAdapter());
  Hive.registerAdapter(DurationAdapter());
  getIt.init(environment: environment);

  // Wait for all dependencies to be initialized
  await getIt.allReady();
}
