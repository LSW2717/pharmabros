import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/const/typography.dart';

class PillTitle extends StatelessWidget {
  final String title;

  const PillTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asset/svg/pill.svg',
          width: 24.w,
          height: 24.w,
        ),
        SizedBox(width: 8.w),
        Text(title, style: headerText3),
      ],
    );
  }
}
