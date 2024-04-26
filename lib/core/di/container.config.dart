// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/courses/data/data_sources/hive/course.dart' as _i6;
import '../../features/courses/data/data_sources/hive/progress.dart' as _i5;
import '../../features/courses/data/mappers/chapter_mapper.dart' as _i3;
import '../../features/courses/data/mappers/course_mapper.dart' as _i7;
import '../../features/courses/data/mappers/lesson_mapper.dart' as _i8;
import '../../features/courses/data/mappers/progress_mapper.dart' as _i4;
import '../../features/courses/data/repositories/course.dart' as _i9;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ChapterMapper>(() => _i3.ChapterMapper());
    gh.factory<_i4.LessonProgressMapper>(() => _i4.LessonProgressMapper());
    gh.singleton<_i5.CourseProgressDataSource>(
      () => _i5.HiveLessonProgressDataSource()..init(),
      registerFor: {_dev},
      signalsReady: true,
    );
    gh.factory<_i6.CourseDataSource>(
      () => _i6.MockCourseDataSource()..init(),
      registerFor: {_dev},
    );
    gh.factory<_i7.CourseMapper>(
        () => _i7.CourseMapper(lessonMapper: gh<_i8.LessonMapper>()));
    gh.singleton<_i6.CourseDataSource>(
      () => _i6.HiveCourseDataSource()..init(),
      registerFor: {_prod},
      signalsReady: true,
    );
    gh.factory<_i8.LessonMapper>(
        () => _i8.LessonMapper(chapterMapper: gh<_i3.ChapterMapper>()));
    gh.factory<_i4.CourseProgressMapper>(
        () => _i4.CourseProgressMapper(mapper: gh<_i4.LessonProgressMapper>()));
    gh.factory<_i9.CourseRepository>(
      () => _i9.DefaultCourseRepository(
        dataSource: gh<_i6.CourseDataSource>(),
        courseMapper: gh<_i7.CourseMapper>(),
        progressDataSource: gh<_i5.CourseProgressDataSource>(),
        progressMapper: gh<_i4.CourseProgressMapper>(),
      ),
      registerFor: {_dev},
    );
    return this;
  }
}
