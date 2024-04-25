import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'course_card.dart';

class CoursesBlock extends StatelessWidget {
  final List<Course> courses;
  final String title;
  final String description;

  const CoursesBlock({super.key, required this.courses, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.headlineMedium;
    final descriptionStyle = Theme.of(context).textTheme.displayMedium;

    return Panel(
      child: SizedBox(
        height: 400.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, textAlign: TextAlign.start, style: titleStyle),
            const SizedBox(height: 12),
            Text(description, style: descriptionStyle),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) => CourseCard.fromCourse(courses[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
