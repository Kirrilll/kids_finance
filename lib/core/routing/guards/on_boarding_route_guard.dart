import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:go_router/src/state.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/routes.dart';
import 'package:kids_finance/core/routing/utils/route_guard_base.dart';
import 'package:kids_finance/features/unboarding/presentation/state/on_boarding_state.dart';


class OnBoardingRouteGuard implements RouteGuardBase {

  @override
  final ValueListenable<OnBoardingState> listenable;

  OnBoardingRouteGuard({required this.listenable});

  @override
  Future<String?> redirect(GoRouterState state) async {
    return listenable.value.map(
        initial: (_) => coursesPath,
        passed: (_) => coursesPath,
        passing: (_) => null,
        notPassed: (_) => onBoardingPath
    );
  }

}