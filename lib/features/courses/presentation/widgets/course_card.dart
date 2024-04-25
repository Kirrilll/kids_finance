import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/constants/path_params_constants.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import '../../domain/entity/e_course_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_info.dart';

class CourseCard extends ConsumerWidget {
  final int id;
  final int progress;
  final String title;
  final String subTitle;
  final String logo;
  final List<ECoursePassingType> passingTypes;
  final bool isLoading;

  const CourseCard({
    super.key,
    required this.id,
    required this.progress,
    required this.title,
    required this.subTitle,
    required this.logo,
    required this.passingTypes,
    this.isLoading = false
  });

  factory CourseCard.fromCourse(Course course) => CourseCard(
      id: course.id,
      progress: course.progress?.lastLesson.lastChapterIndex ?? 0,
      title: course.header,
      subTitle: course.lessons.isEmpty
          ? '0 минут'
          : '${course.lessons.length} по ${course.duration.inMinutes ~/ course.lessons.length} минут',
      logo: course.logo,
      passingTypes: const [ECoursePassingType.read]
  );

  factory CourseCard.loading() => const CourseCard(progress: 0, title: '', subTitle: '', logo: '', passingTypes: [], isLoading: true, id: -1);

  void Function()? buildOnTapCard(WidgetRef ref) => isLoading ? null : () {
    ref.read(locationServiceProvider).goNamed(name: course, params: {
      courseParam: id.toString()
    });
  };

  @override
  Widget build(BuildContext context, ref) {
    return InkResponse(
      onTap: buildOnTapCard(ref),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 100.h,
              child: Image.asset(
                logo,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CourseInfo(title: title, subTitle: subTitle, passingTypes: passingTypes)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
