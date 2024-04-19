import 'package:flutter/material.dart';
import 'course_card.dart';
import 'lesson_data.dart';


class CoursesList extends StatelessWidget {
  final List<LessonData> lessons;

  const CoursesList({super.key, required this.lessons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          final lesson = lessons[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CourseCard(
              isProgress: lesson.isProgress,
              headName: lesson.headName,
              subString: lesson.subString,
              imageURL: lesson.imageURL,
              iconURLs: lesson.iconURLs,
            ),
          );
        },
      ),
    );
  }
}
