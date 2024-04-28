import 'package:flutter_svg/svg.dart';

import '../../../domain/entity/e_passing_type.dart';
import 'package:flutter/material.dart';

extension ECoursePassingTypeIcon on EPassingType {
  Widget get icon {
    switch (this) {
      case EPassingType.listen:
        return SvgPicture.asset(
          'assets/images/headphonesIcon.svg',
          width: 26,
          height: 26,
        );
      case EPassingType.read:
        return SvgPicture.asset(
          'assets/images/bookIcon.svg',
          width: 26,
          height: 26,
        );
      case EPassingType.watch:
        return SvgPicture.asset(
          'assets/images/videoIcon.svg',
          width: 26,
          height: 26,
        );
    }
  }
}
