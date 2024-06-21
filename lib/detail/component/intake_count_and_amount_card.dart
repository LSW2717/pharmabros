import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class IntakeCountAndAmountCard extends StatelessWidget {
  final String perDailyIntakeCountText;
  final String perTimesIntakeAmountText;

  const IntakeCountAndAmountCard({
    required this.perDailyIntakeCountText,
    required this.perTimesIntakeAmountText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 79.w,
              height: 41.w,
              decoration: const BoxDecoration(
                color: mainColor1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Text(
                  '1일',
                  style: bodyText2,
                ),
              ),
            ),
            Container(
              width: 79.w,
              height: 41.w,
              decoration: const BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Text(
                  perDailyIntakeCountText,
                  style: bodyText2,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 79.w,
              height: 41.w,
              decoration: const BoxDecoration(
                color: mainColor1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Text(
                  '1회',
                  style: bodyText2,
                ),
              ),
            ),
            Container(
              width: 79.w,
              height: 41.w,
              decoration: const BoxDecoration(
                color: mainColor2,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Center(
                child: Text(
                  perTimesIntakeAmountText,
                  style: bodyText2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
