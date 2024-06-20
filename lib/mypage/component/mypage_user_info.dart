import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class MyPageUserInfo extends StatelessWidget {
  const MyPageUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 93.w,
        padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.w,
                  child: Text(
                    '이시원',
                    style: headerText1,
                  ),
                ),
                SizedBox(
                  height: 21.w,
                  child: Text(
                    'siwon2717@gmail.com',
                    style: bodyText2.copyWith(color: textColor1),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.navigate_next,
              color: textColor1,
              size: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
