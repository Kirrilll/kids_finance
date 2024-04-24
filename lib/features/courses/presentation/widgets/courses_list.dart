import 'package:flutter/material.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'course_card.dart';
import 'lesson_data.dart';

class CoursesList extends StatelessWidget {
  final List<Course> courses;

  const CoursesList({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          final course = courses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CourseCard(
              progress: course.progress?.lastLesson.lastChapterIndex ?? 0,
              title: course.header,
              logo: course.logo,
              course: course,
              icons: const {},
            ),
          );
        },
      ),
    );
  }
}
