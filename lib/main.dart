import 'package:flutter/material.dart';
import 'package:kids_finance/core/theming/theme.dart';
import 'package:kids_finance/features/presentation/widgets/LessonWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: Scaffold(
        body: Center(
          child: LessonWidget(
            headName: 'История денег и их функции',
            subString: '4 урока по 10 минут',
            isProgress: false,
            imageURL: 'assets/images/28.png',
          ),
        ),
      ),
    );
  }
}
