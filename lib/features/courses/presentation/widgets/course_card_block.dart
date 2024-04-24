import 'package:flutter/material.dart';
import 'package:kids_finance/core/constants.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/presentation/widgets/icon_types.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedCourseCard extends StatelessWidget {
  final String logo;
  final String title;
  final String subTitle;
  final List<ECoursePassingType> passingTypes;

  const AnimatedCourseCard({super.key,
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.passingTypes,
  });

  factory AnimatedCourseCard.fromCourse(Course course) => AnimatedCourseCard(
      logo: course.logo,
      title: course.header,
      subTitle: course.description,
      passingTypes: const [ECoursePassingType.read]
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Column(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: passingTypes.map((passingType) {
            return Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: passingType.icon,
            );
          }).toList(),
        ),
        SizedBox(height: 6.h),
        Text(
          subTitle,
          style: subStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6.h),
        Text(
          title,
          style: headStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
