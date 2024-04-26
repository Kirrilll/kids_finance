import 'package:flutter_svg/svg.dart';

import '../../../domain/entity/e_course_passing_type.dart';
import 'package:flutter/material.dart';

extension ECoursePassingTypeIcon on ECoursePassingType {
  Widget get icon {
    switch (this) {
      case ECoursePassingType.listen:
        return SvgPicture.asset(
          'assets/images/headphonesIcon.svg',
          width: 26,
          height: 26,
        );
      case ECoursePassingType.read:
        return SvgPicture.asset(
          'assets/images/bookIcon.svg',
          width: 26,
          height: 26,
        );
      case ECoursePassingType.watch:
        return SvgPicture.asset(
          'assets/images/videoIcon.svg',
          width: 26,
          height: 26,
        );
    }
  }
}
