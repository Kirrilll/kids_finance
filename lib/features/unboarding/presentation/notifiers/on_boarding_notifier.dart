import 'package:flutter/cupertino.dart';
import 'package:kids_finance/core/routing/constants/name_constants.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/features/unboarding/domain/use_cases/save_passing_unboarding_use_case.dart';
import 'package:kids_finance/features/unboarding/presentation/providers/unboarding_providers.dart';
import 'package:kids_finance/features/unboarding/presentation/state/on_boarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/use_cases/is_show_on_boarding_use_case.dart';

part 'on_boarding_notifier.g.dart';


@Riverpod(keepAlive: true)
class OnBoardingNotifier extends _$OnBoardingNotifier {

  @override
  Future<OnBoardingState> build() async {
    final repository = ref.read(unboardingRepositoryProvider);
    return (await IsShouldShowOnBoardingUseCase(repository).execute(null))
        ? OnBoardingState.notPassed()
        : OnBoardingState.passed();
  }

  Future<void> pass() async {
    final repository = ref.read(unboardingRepositoryProvider);
    state = const AsyncLoading();
    await SavePassingUnboardingUseCase(repository).execute(null);
    state = AsyncData(OnBoardingState.passed());
  }


}