import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/presentation/widgets/animated_course_card.dart';

import '../../domain/entity/course.dart';

class CoursesBlockHorizontal extends StatefulWidget {

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
  State<CoursesBlockHorizontal> createState() => _CoursesBlockHorizontalState();
}

class _CoursesBlockHorizontalState extends State<CoursesBlockHorizontal> {

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
          FittedBox(child: Text(widget.blockTitle, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center)),
          const SizedBox(height: 12),
          Expanded(
            child: PageView.builder(
                itemCount: widget.courses.length,
                controller: _lessonsController,
                itemBuilder: (_, index) => AnimatedCourseCard.fromCourse(
                  widget.courses[index],
                  progress: 1 - (index - currProgress).abs().clamp(0, 1),
                )
            ),
          ),
        ],
      ),
    );
  }
}
