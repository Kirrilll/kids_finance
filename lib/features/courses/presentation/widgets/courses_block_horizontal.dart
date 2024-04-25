import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/presentation/widgets/animated_course_card.dart';

import '../../domain/entity/course.dart';

class CoursesBlockHorizontal extends StatelessWidget {

  final List<Course> courses;
  final String blockTitle;
  final bool isLoading;

  const CoursesBlockHorizontal({
    super.key,
    required this.courses,
    required this.blockTitle,
    this.isLoading = false
  });

  factory CoursesBlockHorizontal.loading() => const CoursesBlockHorizontal(courses: [], blockTitle: '', isLoading: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Theme.of(context).colorScheme.onPrimary
      ),
      padding: const EdgeInsets.all(12),
      height: 310.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(child: Text(blockTitle, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center)),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, int index) => AnimatedCourseCard.fromCourse(courses[index]),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
              itemCount: courses.length,
              // : courseCards,
            ),
          ),
        ],
      ),
    );
  }
}
