import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/common/layout/layout.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      needBackButton: true,
      centerTitle: true,
      title: '제품 정보',
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 382.w,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.w),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 25,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'asset/img/testimage.jpg',
                    width: 160.w,
                    height: 160.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 32.w),
                  Text(
                    '단백하루',
                    style: bodyText1.copyWith(color: textColor1),
                  ),
                  SizedBox(height: 4.w),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '와이디와이 프로바이오 에스엘비 파이토 레드큐민 중성비타민',
                          style: headerText2,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: SvgPicture.asset(
                              'asset/svg/copy.svg',
                              height: 20.w,
                              width: 20.w,
                              color: textColor1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.w),
                  Container(
                    width: 39.w,
                    height: 22.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: buttonColor1),
                    ),
                    child: Center(
                      child: Text(
                        '국내',
                        style: bodyText3.copyWith(color: buttonColor1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
