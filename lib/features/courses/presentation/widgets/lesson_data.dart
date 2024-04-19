import 'package:flutter/material.dart';

class LessonData {
  final bool isProgress;
  final String headName;
  final String subString;
  final String imageURL;
  final List<String> iconURLs;

  LessonData({
    required this.isProgress,
    required this.headName,
    required this.subString,
    required this.imageURL,
    required this.iconURLs,
  });
}
