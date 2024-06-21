import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class ProductFeaturesCard extends StatelessWidget {
  final String productFeature;

  const ProductFeaturesCard({
    required this.productFeature,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      margin: EdgeInsets.symmetric(vertical: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: mainColor1,
      ),
      child: Text(
        productFeature,
        style: bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
