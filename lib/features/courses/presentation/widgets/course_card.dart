import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/presentation/widgets/icon_types.dart';

class CourseCard extends StatelessWidget {
  final int progress;
  final String title;
  final String subTitle;
  final String logo;
  final Map<ECoursePassingType, Widget> icons;

  CourseCard({
    super.key,
    required this.progress,
    required this.title,
    required Course course,
    required this.logo,
    required this.icons,
  }) : subTitle =
            '${course.units.length} по ${course.duration.inMinutes ~/ course.units.length} минут';

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 100,
              child: Image.asset(
                logo,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: icons.entries.map((entry) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: entry.value,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
