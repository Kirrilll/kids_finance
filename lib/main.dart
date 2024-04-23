import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kids_finance/core/app/app.dart';
import 'package:path_provider/path_provider.dart';
import 'core/di/container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter((await getApplicationCacheDirectory()).path);
  runApp(const ProviderScope(child: App()));
}

