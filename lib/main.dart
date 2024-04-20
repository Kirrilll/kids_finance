import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kids_finance/core/app/app.dart';
import 'package:kids_finance/core/theming/theme.dart';
import 'package:kids_finance/core/presentation/panel.dart';

import 'core/di/container.dart';
import 'features/courses/presentation/widgets/courses_list.dart';
import 'features/courses/presentation/widgets/lesson_data.dart';

void main() {
  configureDependencies();
  runApp(const App());
}

