import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';

class HomeEmptyView extends StatelessWidget {
  const HomeEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/pill.png',
            width: 100.w,
            height: 100.w,
          ),
          SizedBox(
            height: 24.w,
          ),
          Text(
            '검색 결과가 없어요',
            style: bodyText1.copyWith(color: textColor1),
          ),
        ],
      ),
    );
  }
}
