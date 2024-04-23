import 'package:kids_finance/features/unboarding/data/data_sources/hive_unboarding_data_source.dart';
import 'package:kids_finance/features/unboarding/data/repositories/unboarding_repository.dart';
import 'package:kids_finance/features/unboarding/data/repositories/unboarding_repository_base.dart';
import 'package:kids_finance/features/unboarding/domain/use_cases/is_show_on_boarding_use_case.dart';
import 'package:kids_finance/features/unboarding/domain/use_cases/save_passing_unboarding_use_case.dart';
import 'package:kids_finance/features/unboarding/presentation/state/on_boarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/data_sources/unboarding_data_source.dart';

part  'unboarding_providers.g.dart';

@Riverpod(keepAlive: true)
UnboardingDataSource unboardingLocalDataSource(UnboardingLocalDataSourceRef ref) {
  final hiveDataSource = HiveUnboardingDataSource();
  ref.onDispose(hiveDataSource.dispose);
  return hiveDataSource;
}

@riverpod
UnboardingRepositoryBase unboardingRepository(UnboardingRepositoryRef ref) {
  final dataSource = ref.read(unboardingLocalDataSourceProvider);
  return UnboardingRepository(dataSource);
}

