import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/constants/name_constants.dart';
import '../../../../core/routing/constants/path_params_constants.dart';
import '../../domain/entity/e_course_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_info.dart';


class AnimatedCourseCard  extends ConsumerWidget {
  final int id;
  final String logo;
  final String title;
  final String subTitle;
  final List<ECoursePassingType> passingTypes;
  final double progress;


  const AnimatedCourseCard({super.key,
    required this.id,
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.passingTypes,
    this.progress = 0
  }): assert(progress >= 0 && progress <= 1);

  factory AnimatedCourseCard.fromCourse(Course course, {double progress = 0}) => AnimatedCourseCard(
      id:  course.id,
      logo: course.logo,
      title: course.header,
      subTitle: course.description,
      passingTypes: const [ECoursePassingType.read],
      progress: progress,
  );

  void Function() buildOnCardTap(WidgetRef ref) => () {
    ref.read(locationServiceProvider).goNamed(name: course, params: {
      courseParam: id.toString()
    });
  };

  @override
  Widget build(BuildContext context, ref) {
    return InkResponse(
      onTap: buildOnCardTap(ref),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 50),
            curve:  Curves.ease,
            clipBehavior: Clip.none,
            child: SizedBox.square(
              dimension: 120 + progress * 40,
              child: Image.asset(
                logo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          AnimatedOpacity(
              opacity: progress,
              duration: const Duration(milliseconds: 50),
              curve: Curves.ease,
              child: CourseInfo(title: title, subTitle: subTitle, passingTypes: passingTypes, center: true,),
          ) ,
        ],
      ),
    );
  }
}


