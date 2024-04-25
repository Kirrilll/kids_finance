import 'package:flutter/material.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'course_card.dart';

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
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CourseCard.fromCourse(courses[index]),
          ),
      ),
    );
  }
}
