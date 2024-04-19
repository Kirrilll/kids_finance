import 'package:flutter/material.dart';
import 'package:kids_finance/core/app/app.dart';
import 'package:kids_finance/core/di/container.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
