import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class MyPageAlarmSetting extends StatelessWidget {
  const MyPageAlarmSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 112.w,
      padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: mainColor,
        ),
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 328.w,
            height: 64.w,
            padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'asset/svg/alarm.svg',
                      width: 40.w,
                      height: 40.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '섭취 알림 설정하기',
                      style: bodyText2,
                    ),
                  ],
                ),
                Icon(
                  Icons.navigate_next,
                  color: textColor1,
                  size: 20.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
