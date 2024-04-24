import 'package:flutter/material.dart';

class LessonData {
  final bool isProgress;
  final String title;
  final String subTitle;
  final String logo;
  final int duration;
  final int units;

  LessonData({
    required this.isProgress,
    required this.title,
    required this.subTitle,
    required this.logo,
    required this.duration,
    required this.units,
  });
}
