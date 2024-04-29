import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonProgress extends StatelessWidget {
  const LessonProgress({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: progress,
        onChanged: null
    );
  }
}
