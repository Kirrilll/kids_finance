import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
import 'package:kids_finance/features/courses/presentation/widgets/animated_lesson_card.dart';

import '../../domain/entity/course.dart';

class CourseCardHorizontal extends StatefulWidget {

  final List<Lesson> lessons;
  final String title;
  final bool isLoading;

  const CourseCardHorizontal({
    super.key,
    required this.lessons,
    required this.title,
    this.isLoading = false
  });

  factory CourseCardHorizontal.loading() => const CourseCardHorizontal(lessons: [], title: '', isLoading: true);

  factory CourseCardHorizontal.fromCourse(Course course) => CourseCardHorizontal(lessons: course.lessons, title: course.title);

  @override
  State<CourseCardHorizontal> createState() => _CourseCardHorizontalState();
}

class _CourseCardHorizontalState extends State<CourseCardHorizontal> {

  late final  _lessonsController = PageController(viewportFraction: 0.4);
  double currProgress = 0;

  @override
  void initState() {
    _lessonsController.addListener(() {
      setState(() => currProgress = _lessonsController.page ?? 0);
    });
    super.initState();
  }

  @override
  void dispose() {
    _lessonsController.dispose();
    super.dispose();
  }

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
          FittedBox(child: Text(widget.title, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center)),
          const SizedBox(height: 12),
          Expanded(
            child: PageView.builder(
                itemCount: widget.lessons.length,
                controller: _lessonsController,
                itemBuilder: (_, index) => AnimatedLessonCard.fromLesson(
                  widget.lessons[index],
                  progress: 1 - (index - currProgress).abs().clamp(0, 1),
                )
            ),
          ),
        ],
      ),
    );
  }
}
