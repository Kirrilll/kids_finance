import 'package:flutter/cupertino.dart';
import 'package:kids_finance/core/utils/use_case_base.dart';
import 'package:kids_finance/features/unboarding/data/repositories/unboarding_repository_base.dart';

final class IsShouldShowOnBoardingUseCase implements UseCase<Future<bool>, void> {
  static const _unboardingCacheLivingDuration = Duration(days: 30);
  final UnboardingRepositoryBase _unboardingRepositoryBase;

  const IsShouldShowOnBoardingUseCase(this._unboardingRepositoryBase);

  @override
  Future<bool> execute(void args) async {
    final isShouldShow = (await _unboardingRepositoryBase.getLastTimeAppOpened())
            .map((time) => time.difference(DateTime.now()).inDays > _unboardingCacheLivingDuration.inDays)
            .getOrElse((l) => true);
    debugPrint('IS SHOULD SHOW ON BOARDING - $isShouldShow');
    if(!isShouldShow) _unboardingRepositoryBase.saveAppOpen(DateTime.now());
    return isShouldShow;
  }

}