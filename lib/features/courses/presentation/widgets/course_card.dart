import 'package:flutter/material.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import '../../domain/entity/e_course_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_info.dart';

class CourseCard extends StatelessWidget {
  final int progress;
  final String title;
  final String subTitle;
  final String logo;
  final List<ECoursePassingType> passingTypes;
  final bool isLoading;

  const CourseCard({
    super.key,
    required this.progress,
    required this.title,
    required this.subTitle,
    required this.logo,
    required this.passingTypes,
    this.isLoading = false
  });

  factory CourseCard.fromCourse(Course course) => CourseCard(
      progress: course.progress?.lastLesson.lastChapterIndex ?? 0,
      title: course.header,
      subTitle: '${course.lessons.length} по ${course.duration.inMinutes ~/ course.lessons.length} минут',
      logo: course.logo,
      passingTypes: const [ECoursePassingType.read]
  );

  factory CourseCard.loading() => const CourseCard(progress: 0, title: '', subTitle: '', logo: '', passingTypes: [], isLoading: true);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 100,
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
