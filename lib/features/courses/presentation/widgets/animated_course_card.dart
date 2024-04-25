import 'package:flutter/material.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entity/e_course_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_info.dart';

class AnimatedCourseCard extends StatelessWidget {
  final String logo;
  final String title;
  final String subTitle;
  final List<ECoursePassingType> passingTypes;
  final bool isFocused;

  const AnimatedCourseCard({super.key,
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.passingTypes,
    this.isFocused = false
  });

  factory AnimatedCourseCard.fromCourse(Course course) => AnimatedCourseCard(
      logo: course.logo,
      title: course.header,
      subTitle: course.description,
      passingTypes: const [ECoursePassingType.read]
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120.h,
            height: 120.h,
            child: Image.asset(
              logo,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 12.h),
          if(isFocused) CourseInfo(title: title, subTitle: subTitle, passingTypes: passingTypes, center: true,)
        ],
      ),
    );
  }
}
