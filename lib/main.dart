import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_finance/core/theming/theme.dart';
import 'package:kids_finance/core/presentation/panel.dart';

import 'features/courses/presentation/widgets/courses_list.dart';
import 'features/courses/presentation/widgets/lesson_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Panel(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const ImageIcon(
                                AssetImage('assets/images/Chevron-Left.png'),
                                size: 24,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Назад',
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const ImageIcon(
                            AssetImage('assets/images/share.png'),
                            size: 24,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Panel(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Основы финансовой грамотности',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Image.asset(
                          'assets/images/fin.png',
                          width: 255,
                          height: 240,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Panel(
                    child: CoursesList(
                      lessons: [
                        LessonData(
                          isProgress: false,
                          headName: 'История денег и их функции',
                          subString: '4 урока по 10 минут',
                          imageURL: 'assets/images/28.png',
                          iconURLs: [
                            'assets/images/bookIcon.png',
                            'assets/images/headphonesIcon.png',
                          ],
                        ),
                        LessonData(
                          isProgress: true,
                          headName: 'Деньги и банкноты мира',
                          subString: '3 урока по 15 минут',
                          imageURL: 'assets/images/lessonImage2.png',
                          iconURLs: [
                            'assets/images/bookIcon.png',
                          ],
                        ),
                        LessonData(
                          isProgress: true,
                          headName: 'Деньги и банкноты мира',
                          subString: '3 урока по 15 минут',
                          imageURL: 'assets/images/lessonImage2.png',
                          iconURLs: [
                            'assets/images/bookIcon.png',
                          ],
                        ),
                        LessonData(
                          isProgress: true,
                          headName: 'Деньги и банкноты мира',
                          subString: '3 урока по 15 минут',
                          imageURL: 'assets/images/lessonImage2.png',
                          iconURLs: [
                            'assets/images/bookIcon.png',
                          ],
                        ),
                        LessonData(
                          isProgress: true,
                          headName: 'Деньги и банкноты мира',
                          subString: '3 урока по 15 минут',
                          imageURL: 'assets/images/lessonImage2.png',
                          iconURLs: [
                            'assets/images/bookIcon.png',
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
