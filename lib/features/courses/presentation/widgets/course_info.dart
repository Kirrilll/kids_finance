import 'package:flutter/material.dart';
import '../../domain/entity/e_course_passing_type.dart';
import '../utils/extensions/course_passing_type_icon_extension.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({super.key, required this.title, required this.subTitle, required this.passingTypes, this.center = false});

  final String title;
  final String subTitle;
  final List<ECoursePassingType> passingTypes;
  final bool center;

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Column(
      crossAxisAlignment: center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: passingTypes.map((passingType) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: passingType.icon,
            );
          }).toList(),
        ),
        const SizedBox(height: 6),
        FittedBox(child: Text(title, style: headStyle)),
        const SizedBox(height: 6),
        FittedBox(
          child: Text(
            subTitle,
            style: subStyle,
          ),
        ),
      ],
    );
  }
}
