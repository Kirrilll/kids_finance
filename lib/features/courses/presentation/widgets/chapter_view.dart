import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kids_finance/core/presentation/panel.dart';

class ChapterView extends StatelessWidget {
  const ChapterView({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Panel(
        child: ConstrainedBox(
      constraints: BoxConstraints.expand(width: double.infinity, height: 300.h),
      child: Text(content),
    ));
  }
}
