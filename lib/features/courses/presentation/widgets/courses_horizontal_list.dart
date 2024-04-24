import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card_block.dart';

class HorizontalCourseList extends StatelessWidget {
  final List<AnimatedCourseCard> courseCards;

  const HorizontalCourseList({super.key, required this.courseCards});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: courseCards,
      ),
    );
  }
}
