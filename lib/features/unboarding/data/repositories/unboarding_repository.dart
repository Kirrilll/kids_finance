import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:kids_finance/core/utils/failure.dart';
import 'package:kids_finance/features/unboarding/data/data_sources/unboarding_data_source.dart';
import 'package:kids_finance/features/unboarding/data/repositories/unboarding_repository_base.dart';

class UnboardingRepository implements UnboardingRepositoryBase{

  final UnboardingDataSource unboardingDataSource;

  const UnboardingRepository(this.unboardingDataSource);

  @override
  Future<Either<IFailure, DateTime>> getLastTimeAppOpened() {
    return unboardingDataSource.getLastTimeAppOpened();
  }

  @override
  Future<void> saveAppOpen(DateTime time) {
    return unboardingDataSource.saveAppOpen(time);
  }
}