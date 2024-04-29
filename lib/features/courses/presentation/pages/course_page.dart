import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import '../providers/course_providers.dart';
import '../widgets/lesson_card.dart';

class CoursePage extends ConsumerWidget {
  final int courseId;

  const CoursePage({super.key, required this.courseId});

  @override
  Widget build(BuildContext context, ref) {


    final courseSelect= ref.watch(courseSelectProvider.call(courseId: courseId));

    final appBarTitleStyle = Theme.of(context).textTheme.headlineMedium;
    final titleStyle = Theme.of(context).textTheme.headlineLarge;
    final descriptionStyle = Theme.of(context).textTheme.displayMedium;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            onTap: ref.read(locationServiceProvider).pop,
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_rounded),
                const SizedBox(width: 10),
                Text(
                  'Назад',
                  style: appBarTitleStyle?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox.square(
              dimension: 24.h,
              child: SvgPicture.asset(
                'assets/images/share.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: courseSelect.when(
          data: (course) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Panel(
                    child: SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            course.title,
                            style: titleStyle?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 12.w),
                          SizedBox(
                            width: 255.w,
                            height: 240.h,
                            child: Image.asset(
                              course.logo,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
              Panel(
                child: SizedBox(
                  height: 400.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(course.title, textAlign: TextAlign.start, style: titleStyle),
                      SizedBox(height: 12.w),
                      Text(course.description, style: descriptionStyle),
                      SizedBox(height: 12.h),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: course.lessons.length,
                          itemBuilder: (BuildContext context, int index) =>  LessonCard.fromLesson(course.lessons[index]),
                          separatorBuilder: (_, __) => const SizedBox(height: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              )],),
            ),
          ),
          error: (_, __) => const Center(child: Text('Ошибка')),
          loading: () => const Center(child: CircularProgressIndicator())
      )
    );
  }
}
