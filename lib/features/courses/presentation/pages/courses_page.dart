import 'package:flutter/material.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card_block.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_horizontal_list.dart';
import 'package:kids_finance/features/courses/presentation/widgets/icon_types.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Page')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
            ),
            HorizontalCourseList(
              courseCards: [
                AnimatedCourseCard(
                  logo: 'assets/images/28.png',
                  title: 'Контроль расходов',
                  subTitle: '2 урока по 20 минут',
                  icons: {
                    ECoursePassingType.listen: ECoursePassingType.listen.icon,
                    ECoursePassingType.read: ECoursePassingType.read.icon,
                  },
                ),
                AnimatedCourseCard(
                  logo: 'assets/images/28.png',
                  title: 'Управление временем',
                  subTitle: '3 урока по 25 минут',
                  icons: {
                    ECoursePassingType.listen: ECoursePassingType.listen.icon,
                  },
                ),
                AnimatedCourseCard(
                  logo: 'assets/images/28.png',
                  title: 'Контроль расходов',
                  subTitle: '2 урока по 20 минут',
                  icons: {
                    ECoursePassingType.listen: ECoursePassingType.listen.icon,
                    ECoursePassingType.read: ECoursePassingType.read.icon,
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
