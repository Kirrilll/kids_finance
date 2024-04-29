import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/constants/path_params_constants.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
import 'package:kids_finance/features/courses/domain/repositories/course_repository.dart';
import 'package:kids_finance/features/courses/presentation/providers/course_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lesson_view_model.g.dart';
part 'lesson_view_model.freezed.dart';

@freezed
sealed class LessonState with _$LessonState {
  factory LessonState.initial() = Initial;
  factory LessonState.loading() = Loading;
  factory LessonState.fulfilled(Lesson lesson, int? currChapterId) = Fulfilled;
  factory LessonState.error(String error) = Error;
}

@riverpod
class LessonViewModel extends _$LessonViewModel {
  @override
  LessonState build({required int lessonId}) {
    init();
    return LessonState.initial();
  }

  init() {
    ref.listen(lessonSelectProvider.call(lessonId: lessonId), (previous, next) {
      state = next.when(
          data: (lesson) => Fulfilled(lesson, lesson.lastPassedChapterId),
          error: (error, _) => Error('Ошибка'),
          loading: () => Loading()
      );
    });
  }

  int currChapterIndex() {
    return state.whenOrNull(fulfilled: (lesson, currChapterId) => currChapterId == null
        ? 0
        : lesson.chapters.indexWhere((chapter) => chapter.id == currChapterId)
    ) ?? 0;
  }

  swipeChapter(int index) {
    final fulfilledState = state.mapOrNull(fulfilled: (lesson) => lesson);
    if(fulfilledState == null) return;
    final chapterIndex = currChapterIndex();
    final maxPassedChapterIndex =  fulfilledState.lesson.lastPassedChapterId == null
        ? 0
        : fulfilledState.lesson.chapters.indexWhere((chapter) => chapter.id == fulfilledState.lesson.lastPassedChapterId);
    final courseRemoteDataSource = ref.read(courseRemoteDataSourceProvider);
    final courseLocalDataSource = ref.read(lessonLocalDataSourceProvider);
    final currCourse = ref
        .read(courseStateRepositoryProvider
        .call(courseRemoteDataSource: courseRemoteDataSource, lessonLocalDataSource: courseLocalDataSource)
        .select((asyncCourses) => asyncCourses
        .whenOrNull(data: (courses) => courses
        .firstWhere((course) => course.lessons
        .indexWhere((lesson) => lesson.id == lessonId) != -1)))
    );
    if(currCourse == null) return;
    final currLessonIndex = currCourse.lessons.indexWhere((lesson) => lesson.id == lessonId);
    if(index > maxPassedChapterIndex) {
      passChapter(currCourse.lessons[currLessonIndex].chapters[index].id);
    }
    state = fulfilledState.copyWith.call(currChapterId: currCourse.lessons[currLessonIndex].chapters[index].id);
  }

  passChapter(int chapterId) {
    final courseRemoteDataSource = ref.read(courseRemoteDataSourceProvider);
    final courseLocalDataSource = ref.read(lessonLocalDataSourceProvider);
    final lesson = state.mapOrNull(fulfilled: (lesson) => lesson);
    if(lesson == null) return;

    ref.read(courseStateRepositoryProvider
        .call(courseRemoteDataSource: courseRemoteDataSource, lessonLocalDataSource: courseLocalDataSource)
        .notifier)
        .updateLessonProgress(lessonId: lessonId, passedChapterId: chapterId);
  }
}