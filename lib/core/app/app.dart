import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kids_finance/core/routing/providers/router_providers.dart';
import 'package:kids_finance/core/routing/routes.dart';
import 'package:kids_finance/core/theming/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return  MaterialApp.router(
      theme: lightTheme,
      routerConfig: ref.read(locationServiceProvider).routerConfig,
    );
  }
}
