import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/constants/path_params_constants.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/e_passing_type.dart';
import 'package:kids_finance/features/courses/domain/repositories/course_repository.dart';
import 'package:kids_finance/features/courses/presentation/providers/course_providers.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_card.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_card_horizontal.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card.dart';

class CoursesPage extends ConsumerWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseRemoteDataSource = ref.read(courseRemoteDataSourceProvider);
    final courseLocalDataSource = ref.read(lessonLocalDataSourceProvider);
    final courseRepository = ref.watch(courseStateRepositoryProvider.call(
        courseRemoteDataSource: courseRemoteDataSource,
        lessonLocalDataSource: courseLocalDataSource
    ));
    final lastLesson = ref.watch(lastUpdatedLessonProvider);
    final TextStyle? appTitleStyle = Theme.of(context).textTheme.headlineLarge;
    final TextStyle? titleStyle = Theme.of(context).textTheme.headlineMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KIDS FINANCE',
          style: appTitleStyle?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            width: 44.w,
            height: 20.h,
            child: SvgPicture.asset(
              'assets/images/Coins.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      body: courseRepository.when(
          data: (courses) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.w),
                  Panel(
                    child: SizedBox(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Последний урок',
                              style: titleStyle?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 12.w),
                            lastLesson.when(
                                data: (lesson) => lesson == null
                                    ? const Center(child: Text('Вы еще не посещали уроки'),)
                                    : LessonCard.fromLesson(lesson),
                                error: (_, __) => const Center(child: Text('Ошибка')),
                                loading: () => const Center(child: CircularProgressIndicator())
                            )
                          ],
                        )),
                  ),
                  SizedBox(height: 12.h),
                  ...[for(int i = 0; i < courses.length; i++) Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: i.isEven
                          ? CoursesCard.fromCourse(
                              courses[i],
                              onCardTap: () => ref.read(locationServiceProvider).goNamed(name: course, params: {courseParam: courses[i].id.toString()}),
                          )
                          : CourseCardHorizontal.fromCourse(courses[i]),
                  )]
                ],
              ),
            ),
          ),
          error: (_, __) => const Center(child: Text('Ошибка')),
          loading: () => const Center(child: CircularProgressIndicator())
      )
    );
  }
}
