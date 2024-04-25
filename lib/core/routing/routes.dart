import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kids_finance/core/routing/constants/path_params_constants.dart';
import 'package:kids_finance/core/routing/utils/route_guard_base.dart';
import 'package:kids_finance/features/courses/presentation/pages/course_page.dart';
import 'package:kids_finance/features/courses/presentation/pages/courses_page.dart';
import 'package:kids_finance/features/courses/presentation/pages/lesson_page.dart';
import 'package:kids_finance/features/unboarding/presentation/pages/unboarding_page.dart';
import 'constants/name_constants.dart';

part 'constants/path_constants.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

//Guard, имеет location на который триггер,
//Observable<bool> || Listenable<bool>, на который триггер,
//Хранит в себе логику редиректа

Page buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return Platform.isIOS
      ? CupertinoPage<T>(child: child)
      : CustomTransitionPage<T>(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 100),
    reverseTransitionDuration: const Duration(milliseconds: 100),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

GoRouter configureRouter(List<RouteGuardBase> guards) => GoRouter(
    initialLocation: coursesPath,
    refreshListenable: Listenable.merge(guards.map((guard) => guard.listenable).toList()),
    redirect: (_, state) async {
      for(final guard in guards) {
        final redirectRes = await guard.redirect(state);
        if(redirectRes != null) return redirectRes;
      }
      return null;
    },
    routes: [
      GoRoute(
          path: onBoardingPath,
          name: unboarding,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const UnboardingPage()
          )
      ),
      GoRoute(
        path: coursesPath,
        name: coursesList,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const CoursesPage()
        ),
        routes: [
          GoRoute(
              path: coursePath,
              name: course,
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: CoursePage(courseId: int.tryParse(state.pathParameters[courseParam] ?? '') ?? -1 )
              )
          ),
          GoRoute(
              path: lessonPath,
              name: lesson,
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: LessonPage(
                      courseId: int.tryParse(state.pathParameters[courseParam] ?? '') ?? -1,
                      lessonId: int.tryParse(state.pathParameters[lessonParam] ?? '') ?? -1,
                  )
              )
          ),
        ]
      )
    ]
);
