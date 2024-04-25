import 'package:flutter/material.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card.dart';
import 'package:kids_finance/features/courses/presentation/widgets/animated_course_card.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_block_horizontal.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_block.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Page')),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
            ),

            CoursesBlock(
                title: 'bcbhcjjd',
                description: 'hdhdjdkslscksjkdkdkdkdl',
                courses: [
              Course(id: 1, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
              Course(id: 2, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
              Course(id: 3, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
            ]),
            SizedBox(height: 10),
            CoursesBlockHorizontal(
                courses: [
                  Course(id: 1, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
                  Course(id: 2, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
                  Course(id: 3, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', lessons: []),
                  // Course(id: 2, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', units: []),
                  // Course(id: 3, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', units: [])
                ],
                blockTitle: 'Основы финансовой грамматности'
            )
          ],
        ),
      ),
    );
  }
}
