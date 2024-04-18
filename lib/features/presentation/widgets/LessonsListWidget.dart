import 'package:flutter/material.dart';
import 'package:kids_finance/features/presentation/widgets/LessonWidget.dart';
import 'package:kids_finance/features/presentation/widgets/lesson_data.dart';

class LessonsListWidget extends StatelessWidget {
  final List<LessonData> lessons;

  const LessonsListWidget({Key? key, required this.lessons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        scrollDirection:
            Axis.vertical, // Устанавливаем горизонтальную прокрутку
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          final lesson = lessons[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0), // Добавляем небольшие отступы между уроками
            child: LessonWidget(
              isProgress: lesson.isProgress,
              headName: lesson.headName,
              subString: lesson.subString,
              imageURL: lesson.imageURL,
              iconURLs: lesson.iconURLs,
            ),
          );
        },
      ),
    );
  }
}
