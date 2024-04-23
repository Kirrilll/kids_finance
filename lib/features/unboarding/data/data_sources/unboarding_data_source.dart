import 'package:fpdart/fpdart.dart';
import 'package:kids_finance/core/utils/failure.dart';

abstract class UnboardingDataSource {
  Future<Either<IFailure, DateTime>> getLastTimeAppOpened();
  Future<void> saveAppOpen(DateTime time);
}