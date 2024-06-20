import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/mypage/component/mypage_alarm_setting.dart';
import 'package:pharmabros/mypage/component/mypage_consultation_records.dart';
import 'package:pharmabros/mypage/component/mypage_diver.dart';
import 'package:pharmabros/mypage/component/mypage_event_list.dart';
import 'package:pharmabros/mypage/component/mypage_user_info.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          const MyPageUserInfo(),
          const MyPageDiver(),
          const MyPageConsultationRecords(),
          const MyPageDiver(),
          const MyPageAlarmSetting(),
          const MyPageDiver(),
          const MyPageEventList(),
          const MyPageDiver(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 216.w,
            padding: EdgeInsets.symmetric(vertical: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56.w,
                    padding: EdgeInsets.all(16.w),
                    color: Colors.transparent,
                    child: Text(
                      '공지사항',
                      style: bodyText1,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56.w,
                    padding: EdgeInsets.all(16.w),
                    color: Colors.transparent,
                    child: Text(
                      '문의/제보하기',
                      style: bodyText1,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 56.w,
                    padding: EdgeInsets.all(16.w),
                    color: Colors.transparent,
                    child: Text(
                      '친한약사 앱 칭찬하기',
                      style: bodyText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 95.w,
            color: mainColor,
            padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async{
                        const url =
                            'https://www.pharma-bros.com/terms';
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          throw '링크를 열 수 없습니다.';
                        }
                      },
                      child: Text(
                        '이용약관',
                        style: bodyText2.copyWith(color: textColor4),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.w),
                      child: const Icon(
                        Icons.circle,
                        size: 3,
                        color: textColor4,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async{
                        const url =
                            'https://www.pharma-bros.com/privacy';
                        if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                        } else {
                        throw '링크를 열 수 없습니다.';
                        }
                      },
                      child: Text(
                        '개인정보처리방침',
                        style: bodyText2.copyWith(color: textColor4),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.w),
                Text(
                  '버전 정보 v0.0.0',
                  style: bodyText3.copyWith(color: textColor4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
