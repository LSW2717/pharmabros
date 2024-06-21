import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class DomesticBadge extends StatelessWidget {
  final bool isDomestic;

  const DomesticBadge({
    required this.isDomestic,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.w,
      height: 22.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: isDomestic ? buttonColor1 : buttonColor2),
      ),
      child: Center(
        child: Text(
          isDomestic ? '국내' : '해외',
          style: bodyText3.copyWith(color: buttonColor1),
        ),
      ),
    );
  }
}
