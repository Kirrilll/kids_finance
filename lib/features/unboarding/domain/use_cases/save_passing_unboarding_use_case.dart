import 'package:kids_finance/core/utils/use_case_base.dart';
import '../../data/repositories/unboarding_repository_base.dart';

final class SavePassingUnboardingUseCase implements UseCase<Future<void>, dynamic> {

  final UnboardingRepositoryBase _unboardingRepositoryBase;

  const SavePassingUnboardingUseCase(this._unboardingRepositoryBase);

  @override
  Future<void> execute(args) async {
    return _unboardingRepositoryBase.saveAppOpen(DateTime.now());
  }
}