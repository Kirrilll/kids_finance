import 'package:flutter/material.dart';
import 'package:kids_finance/core/constants.dart';
import 'package:kids_finance/features/courses/presentation/widgets/icon_types.dart';
import 'package:kids_finance/features/courses/presentation/widgets/lesson_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedCourseCard extends StatelessWidget {
  final String logo;
  final String title;
  final String subTitle;
  final Map<ECoursePassingType, Widget> icons;

  AnimatedCourseCard({
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 160.h,
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120.h,
            height: 120.h,
            child: Image.asset(
              logo,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: icons.entries.map((entry) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: entry.value,
              );
            }).toList(),
          ),
          SizedBox(height: 6.h),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: gray,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
