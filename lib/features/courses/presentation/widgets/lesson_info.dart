import 'package:flutter/material.dart';
import 'package:kids_finance/core/constants.dart';
import '../../domain/entity/e_passing_type.dart';
import '../utils/extensions/course_passing_type_icon_extension.dart';

class LessonInfo extends StatelessWidget {
  const LessonInfo(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.passingTypes,
      this.center = false});

  final String title;
  final String subTitle;
  final List<EPassingType> passingTypes;
  final bool center;

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle =
        Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: gray,
            );
    return Column(
      crossAxisAlignment:
          center ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
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
