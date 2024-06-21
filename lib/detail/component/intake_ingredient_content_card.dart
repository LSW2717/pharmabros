import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/detail/model/per_daily_intake_ingredient_content_model.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class IntakeIngredientContentCard extends StatelessWidget {
  final PerDailyIntakeIngredientContent intakeIngredientContent;

  const IntakeIngredientContentCard({
    required this.intakeIngredientContent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.w),
      child: Row(
        children: [
          SizedBox(
            width: 163.w,
            child: Text(
              intakeIngredientContent.ingredientName,
              style: bodyText2.copyWith(color: textColor1),
            ),
          ),
          SizedBox(width: 2.w),
          SizedBox(
            width: 163.w,
            child: Text(
              intakeIngredientContent.content,
              style: bodyText2.copyWith(color: mainColor3),
            ),
          ),
        ],
      ),
    );
  }
}
