import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class MyPageConsultationRecords extends StatelessWidget {
  const MyPageConsultationRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 185.w,
      padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.w,
            child: Text(
              '상담 기록',
              style: headerText1,
            ),
          ),
          SizedBox(
            height: 21.w,
            child: Text(
              '지금까지 상담 기록을 모두 볼 수 있어요',
              style: bodyText2.copyWith(color: textColor1),
            ),
          ),
          SizedBox(
            height: 16.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){},
                  child: SizedBox(
                    width: 156.w,
                    height: 72.w,
                    child: Center(
                      child: Text(
                        '나의 상담',
                        style: bodyText1,
                      ),
                    ),
                  ),
                ),
              ),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: mainColor,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){},
                  child: SizedBox(
                    width: 156.w,
                    height: 72.w,
                    child: Center(
                      child: Text(
                        '관심 상담',
                        style: bodyText1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
