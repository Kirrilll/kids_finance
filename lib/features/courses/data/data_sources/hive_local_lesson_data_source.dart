import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:kids_finance/features/courses/data/data_sources/local_lesson_data_source.dart';
import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';

class HiveLocalLessonDataSource implements LessonLocalDataSource {

  final Completer<Box<HiveLessonProgressDTO>> _boxCompleter = Completer();
  static const _lessonProgressName = 'lessons-progress';

  init() async {
    Hive.registerAdapter(LessonProgressAdapter());
    if(!_boxCompleter.isCompleted) {
      _boxCompleter.complete((await Hive.openBox(_lessonProgressName)));
    }
  }

  @override
  Future<List<LessonProgressDTO>> selectAll() async {
    return (await _boxCompleter.future).values.toList();
  }

  @override
  Future<LessonProgressDTO?> selectByLessonId(int courseId) async {
    return (await _boxCompleter.future).get(courseId);
  }

  @override
  Future<void> updateLessonProgress({ required int lessonId, required int passedChapterId}) async {
    return (await _boxCompleter.future).put(lessonId, HiveLessonProgressDTO(lessonId, passedChapterId, DateTime.now()));
  }

  @override
  Future<LessonProgressDTO?> getLastUpdatedLesson() async {
    return (await _boxCompleter.future)
        .values
        .sortBy(Order.from((pLesson, currLesson) => pLesson.updatedAt.compareTo(currLesson.updatedAt)))
        .lastOrNull;
  }
  
}