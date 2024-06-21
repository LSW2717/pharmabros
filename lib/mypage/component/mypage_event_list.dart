import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class MyPageEventList extends StatelessWidget {
  const MyPageEventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 152.w,
      padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 24.w,
              child: Text(
                '나의 참여',
                style: headerText3,
              )),
          Ink(
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
                padding:
                EdgeInsets.symmetric(vertical: 16.w, horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'asset/svg/announce.svg',
                          width: 40.w,
                          height: 40.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '친한 이벤트 활동 내역',
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
        ],
      ),
    );
  }
}
