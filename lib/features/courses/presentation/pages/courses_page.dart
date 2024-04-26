import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kids_finance/core/presentation/panel.dart';
import 'package:kids_finance/features/courses/domain/entity/course.dart';
import 'package:kids_finance/features/courses/domain/entity/e_course_passing_type.dart';
import 'package:kids_finance/features/courses/presentation/providers/course_providers.dart';
import 'package:kids_finance/features/courses/presentation/widgets/course_card.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_card_horizontal.dart';
import 'package:kids_finance/features/courses/presentation/widgets/courses_block.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_data.dart';

class CoursesPage extends ConsumerWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseRepository = ref.watch(courseRepositoryProvider);
    final TextStyle? appTitleStyle = Theme.of(context).textTheme.headlineLarge;
    final TextStyle? titleStyle = Theme.of(context).textTheme.headlineMedium;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KIDS FINANCE',
          style: appTitleStyle?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
            width: 44.w,
            height: 20.h,
            child: SvgPicture.asset(
              'assets/images/Coins.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.w),
              Panel(
                child: SizedBox(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Последний урок',
                      style: titleStyle?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12.w),
                    const CourseCard(
                      id: 1,
                      progress: 1,
                      title: 'Финансовые цели',
                      subTitle: '2 из 3 уроков',
                      logo: 'assets/images/courseCard6.png',
                      passingTypes: [ECoursePassingType.read],
                    ),
                  ],
                )),
              ),
              SizedBox(height: 12.h),
              const CoursesBlock(
                  title: 'Основы финансовой грамотности',
                  description:
                      'Курс для быстрого старта в финансовой грамотности',
                  courses: [
                    Course(
                        id: 1,
                        header: 'История денег и их функции',
                        logo: 'assets/images/courseCard1.png',
                        description: '2ч 30 мин.',
                        lessons: []),
                    Course(
                        id: 2,
                        header: 'Деньги и банкноты мира',
                        logo: 'assets/images/courseCard2.png',
                        description: '2ч 30 мин.',
                        lessons: []),
                    Course(
                        id: 3,
                        header: 'Доходы и карманные деньги',
                        logo: 'assets/images/courseCard3.png',
                        description: '2ч 30 мин.',
                        lessons: []),
                  ]),
              const SizedBox(height: 12),
              const CoursesCardHorizontal(courses: [
                Course(
                    id: 1,
                    header: 'Контроль раскходов',
                    logo: 'assets/images/courseCard4.png',
                    description: '2ч 30 мин.',
                    lessons: []),
                Course(
                    id: 2,
                    header: 'Контроль раскходов',
                    logo: 'assets/images/courseCard5.png',
                    description: '2ч 30 мин.',
                    lessons: []),
                Course(
                    id: 3,
                    header: 'Контроль раскходов',
                    logo: 'assets/images/courseCard6.png',
                    description: '2ч 30 мин.',
                    lessons: []),
                // Course(id: 2, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', units: []),
                // Course(id: 3, header: 'Контроль раскходов', logo: 'assets/images/28.png', description: '2ч 30 мин.', units: [])
              ], blockTitle: 'Основы финансовой грамматности'),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
    // final TextStyle? appBarTitleStyle =
    //     Theme.of(context).textTheme.headlineMedium;
    // final TextStyle? titleStyle = Theme.of(context).textTheme.headlineLarge;

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       'Назад',
    //       style: appBarTitleStyle?.copyWith(
    //         fontWeight: FontWeight.w500,
    //       ),
    //       textAlign: TextAlign.left,
    //     ),
    //     leading: Padding(
    //       padding: const EdgeInsets.all(13.0),
    //       child: SizedBox.square(
    //         dimension: 24.h,
    //         child: SvgPicture.asset(
    //           'assets/images/Back.svg',
    //           fit: BoxFit.contain,
    //         ),
    //       ),
    //     ),
    //     actions: [
    //       Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: SizedBox.square(
    //           dimension: 24.h,
    //           child: SvgPicture.asset(
    //             'assets/images/share.svg',
    //             fit: BoxFit.contain,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 16),
    //       child:
    //           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //         SizedBox(height: 12.w),
    //         Panel(
    //           child: SizedBox(
    //               child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             crossAxisAlignment: CrossAxisAlignment.stretch,
    //             children: [
    //               Text(
    //                 'Основы финансовой грамотности',
    //                 style: titleStyle?.copyWith(
    //                   fontWeight: FontWeight.w500,
    //                 ),
    //                 textAlign: TextAlign.center,
    //               ),
    //               SizedBox(height: 12.w),
    //               SizedBox(
    //                 width: 255.w,
    //                 height: 240.h,
    //                 child: Image.asset(
    //                   'assets/images/manL.png',
    //                   fit: BoxFit.contain,
    //                 ),
    //               ),
    //             ],
    //           )),
    //         ),
    //         SizedBox(height: 12.h),
    //         const CoursesBlock(
    //             title: 'О курсе',
    //             description:
    //                 'В рамках первого модуля вы научитесь управлять личными финансами: определять свои доходы и расходы, узнаете, как составлять бюджет и достиг',
    //             courses: [
    //               Course(
    //                   id: 1,
    //                   header: 'История денег и их функции',
    //                   logo: 'assets/images/courseCard1.png',
    //                   description: '2ч 30 мин.',
    //                   lessons: []),
    //               Course(
    //                   id: 2,
    //                   header: 'Деньги и банкноты мира',
    //                   logo: 'assets/images/courseCard2.png',
    //                   description: '2ч 30 мин.',
    //                   lessons: []),
    //               Course(
    //                   id: 3,
    //                   header: 'Доходы и карманные деньги',
    //                   logo: 'assets/images/courseCard3.png',
    //                   description: '2ч 30 мин.',
    //                   lessons: []),
    //             ]),
    //       ]),
    //     ),
    //   ),
    // );
  }
}
