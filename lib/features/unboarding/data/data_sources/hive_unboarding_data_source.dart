import 'dart:async';
import 'package:fpdart/src/either.dart';
import 'package:hive/hive.dart';
import 'package:kids_finance/core/utils/failure.dart';
import 'package:kids_finance/features/unboarding/data/data_sources/unboarding_data_source.dart';

class HiveUnboardingDataSource implements UnboardingDataSource {
  final Completer<Box<DateTime>> _boxCompleter = Completer();
  static const _kLastTimeOpen = 'lastTime';

  HiveUnboardingDataSource() {
    Hive.openBox<DateTime>('appOpening')
        .then((value) => _boxCompleter.complete(value));
  }

  @override
  Future<Either<IFailure, DateTime>> getLastTimeAppOpened() async {
    final box = await _boxCompleter.future;
    return Either.fromNullable(
        box.get(_kLastTimeOpen),
            () => const NotFoundFailure(message: 'Не было открыто ни разу')
    );
  }

  @override
  Future<void> saveAppOpen(DateTime time) async {
    final box = await _boxCompleter.future;
    return box.put(_kLastTimeOpen, time);
  }

  dispose() {
    _boxCompleter.future.then((box) => box.close());
  }
}