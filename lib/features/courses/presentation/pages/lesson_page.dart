import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key, required this.lessonId});

  final int lessonId;

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('УРОК'),);
  }
}
