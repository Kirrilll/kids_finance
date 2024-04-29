import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/constants/path_params_constants.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/courses/domain/entity/lesson.dart';
import '../../domain/entity/e_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_info.dart';

class LessonCard extends ConsumerWidget {
  final int id;
  final int progress;
  final String title;
  final String subTitle;
  final String logo;
  final List<EPassingType> passingTypes;
  final bool isLoading;

  const LessonCard(
      {super.key,
      required this.id,
      required this.progress,
      required this.title,
      required this.subTitle,
      required this.logo,
      required this.passingTypes,
      this.isLoading = false});

  factory LessonCard.fromLesson(Lesson lesson) => LessonCard(
      id: lesson.id,
      progress: lesson.lastPassedChapterId ?? 0,
      title: lesson.title,
      subTitle: lesson.chapters.isEmpty
          ? '0 минут'
          : '${lesson.chapters.length} по ${lesson.duration.inMinutes ~/ lesson.chapters.length} минут',
      logo: lesson.logo,
      passingTypes: lesson.passingType,
  );

  factory LessonCard.loading() => const LessonCard(
      progress: 0,
      title: '',
      subTitle: '',
      logo: '',
      passingTypes: [],
      isLoading: true,
      id: -1);

  void Function()? buildOnTapCard(WidgetRef ref) => isLoading
      ? null
      : () {
          ref
              .read(locationServiceProvider)
              .goNamed(name: lesson, params: {lessonParam: id.toString()});
        };

  @override
  Widget build(BuildContext context, ref) {
    return InkResponse(
      onTap: buildOnTapCard(ref),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox.square(
              dimension: 100.h,
              child: Image.asset(
                logo,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: LessonInfo(
                      title: title,
                      subTitle: subTitle,
                      passingTypes: passingTypes)),
            ),
          ],
        ),
      ),
    );
  }
}
