import 'package:flutter/material.dart';
import 'package:kids_finance/core/routing/routes.dart';
import 'package:kids_finance/core/theming/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      theme: lightTheme,
      routerConfig: router,
    );
  }
}
