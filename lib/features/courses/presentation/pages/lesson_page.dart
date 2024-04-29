import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kids_finance/features/courses/presentation/providers/course_providers.dart';
import 'package:kids_finance/features/courses/presentation/view_models/lesson_view_model.dart';
import 'package:kids_finance/features/courses/presentation/widgets/chapter_view.dart';

import '../../../../core/routing/providers/router_providers.dart';
import '../../domain/entity/lesson.dart';

class LessonPage extends ConsumerStatefulWidget {
  const LessonPage({super.key, required this.lessonId});

  final int lessonId;

  @override
  ConsumerState<LessonPage> createState() =>  _LessonPageState();
}

class _LessonPageState extends ConsumerState<LessonPage> {

  final PageController chapterController = PageController();


  void onChangeChapter(int chapterIndex) {
    ref.read(lessonViewModelProvider.call(lessonId: widget.lessonId).notifier).swipeChapter(chapterIndex);
  }

  @override
  Widget build(BuildContext context) {
    final appBarTitleStyle = Theme.of(context).textTheme.headlineMedium;
    final lesson = ref.watch(lessonViewModelProvider.call(lessonId: widget.lessonId));

    return Scaffold(
      appBar:  AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            onTap: ref.read(locationServiceProvider).pop,
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_rounded),
                const SizedBox(width: 10),
                Text(
                  'Назад',
                  style: appBarTitleStyle?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
      body: lesson.whenOrNull(
        fulfilled: (lesson, currChapterId) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(
                  value: ref.read(lessonViewModelProvider.call(lessonId: widget.lessonId).notifier).currChapterIndex() / lesson.chapters.length,
                  minHeight: 8,
                  color: const Color(0xFF537CE8),
                  borderRadius: BorderRadius.circular(20),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: PageView.builder(
                      controller: chapterController,
                      onPageChanged: onChangeChapter,
                      itemCount: lesson.chapters.length,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ChapterView(content: lesson.chapters[index].content),
                      )
                  ),
                )
              ],
            ),
        ),
        loading: () => const Center(child: CircularProgressIndicator())
      ),
    );
  }
}
