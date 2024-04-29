import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
import 'lesson_card.dart';

class CoursesCard extends StatelessWidget {
  final List<Lesson> lessons; //lesspns
  final String title;
  final String description;
  final void Function()? onCardTap;

  const CoursesCard(
      {super.key,
      required this.lessons,
      required this.title,
      required this.description,
      this.onCardTap});


  factory CoursesCard.fromCourse(Course course, {required void Function() onCardTap}) =>  CoursesCard(
      lessons: course.lessons,
      title: course.title,
      description: course.description,
      onCardTap: onCardTap,
  );
//factory from course

// add loading
  factory CoursesCard.loading() => const CoursesCard(
        lessons: [],
        title: '',
        description: '',
        onCardTap: null,
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
              onTap: onCardTap,
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lessons.length,
                itemBuilder: (BuildContext context, int index) =>  LessonCard.fromLesson(lessons[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
