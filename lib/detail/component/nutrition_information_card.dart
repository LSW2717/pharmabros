import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/detail/model/nutrition_information_model.dart';

import '../../common/component/half_backbround_text_painter.dart';
import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class NutritionInformationCard extends StatelessWidget {
  final NutritionInformation nutritionInformation;

  const NutritionInformationCard({
    required this.nutritionInformation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.w),
      margin: EdgeInsets.only(bottom: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: diverColor2, width: 1.0),
      ),
      child: Column(
        children: [
          CustomPaint(
            painter: HalfBackgroundTextPainter( nutritionInformation.nutritionName, mainColor2, Colors.transparent),
            child: Text(
              nutritionInformation.nutritionName,
              style: headerText3,
            ),
          ),
          SizedBox(height: 8.w),
          Text(
            nutritionInformation.description,
            style: bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
