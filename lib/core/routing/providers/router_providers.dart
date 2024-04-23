import 'package:flutter/cupertino.dart';
import 'package:kids_finance/core/routing/guards/on_boarding_route_guard.dart';
import 'package:kids_finance/core/routing/services/go_router_location_service.dart';
import 'package:kids_finance/core/routing/services/location_service_base.dart';
import 'package:kids_finance/features/unboarding/presentation/notifiers/on_boarding_notifier.dart';
import 'package:kids_finance/features/unboarding/presentation/state/on_boarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router_providers.g.dart';

@Riverpod(keepAlive: true)
LocationServiceBase locationService(LocationServiceRef ref) {

  final ValueNotifier<OnBoardingState> showOnBoardingNotifier = ValueNotifier(OnBoardingState.initial());

  final sub = ref.listen(onBoardingNotifierProvider, (previous, next) {
    debugPrint('CHANGE ON BOARDING STATE TO $next');
    showOnBoardingNotifier.value = next.value ?? OnBoardingState.initial();
  }, fireImmediately: true);

  ref.onDispose(() {
    sub.close();
  });

  return GoRouterLocationService(guards: [
    OnBoardingRouteGuard(listenable: showOnBoardingNotifier)
  ]);
}
