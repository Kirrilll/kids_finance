import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';

abstract class UnboardingRepositoryBase {
  Future<Either<IFailure, DateTime>> getLastTimeAppOpened();
  Future<void> saveAppOpen(DateTime time);
}