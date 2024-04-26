import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'course_card.dart';

class CoursesBlock extends StatelessWidget {
  final List<Course> courses; //lesspns
  final String title;
  final String description;

  const CoursesBlock(
      {super.key,
      required this.courses,
      required this.title,
      required this.description});

//factory from course

// add loading
  factory CoursesBlock.loading() => const CoursesBlock(
        courses: [],
        title: '',
        description: '',
      );

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
            InkResponse(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, textAlign: TextAlign.start, style: titleStyle),
                  SvgPicture.asset(
                    'assets/images/Chevron-Left.svg',
                    height: 24.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.w),
            Text(description, style: descriptionStyle),
            SizedBox(height: 12.h),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) =>
                    CourseCard.fromCourse(courses[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
