import '../../../domain/entity/e_course_passing_type.dart';
import 'package:flutter/material.dart';

extension ECoursePassingTypeIcon on ECoursePassingType {
  Widget get icon {
    switch (this) {
      case ECoursePassingType.listen:
        return Image.asset(
          'assets/images/headphonesIcon.png',
          width: 26,
          height: 26,
        );
      case ECoursePassingType.read:
        return Image.asset(
          'assets/images/bookIcon.png',
          width: 26,
          height: 26,
        );
      case ECoursePassingType.watch:
        return Image.asset(
          'assets/images/videoIcon.png',
          width: 26,
          height: 26,
        );
    }
  }
}

