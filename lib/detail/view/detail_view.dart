import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmabros/common/component/custom_diver.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/common/layout/layout.dart';
import 'package:pharmabros/detail/component/intake_way_card.dart';
import 'package:pharmabros/detail/component/nutrition_information_card.dart';
import 'package:pharmabros/detail/model/in_take_method_model.dart';
import 'package:pharmabros/detail/model/nutrition_information_model.dart';

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
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 129.w,
                  padding:
                      EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'asset/svg/pill.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text('섭취 용법', style: headerText3),
                        ],
                      ),
                      SizedBox(height: 16.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 79.w,
                                height: 41.w,
                                decoration: const BoxDecoration(
                                  color: mainColor1,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    bottomLeft: Radius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '1일',
                                    style: bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                width: 79.w,
                                height: 41.w,
                                decoration: const BoxDecoration(
                                  color: mainColor2,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '0회',
                                    style: bodyText2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 79.w,
                                height: 41.w,
                                decoration: const BoxDecoration(
                                  color: mainColor1,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    bottomLeft: Radius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '1회',
                                    style: bodyText2,
                                  ),
                                ),
                              ),
                              Container(
                                width: 79.w,
                                height: 41.w,
                                decoration: const BoxDecoration(
                                  color: mainColor2,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '0티스푼',
                                    style: bodyText2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const CustomDiver(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'asset/svg/pill.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text('섭취 방법', style: headerText3),
                        ],
                      ),
                      SizedBox(height: 4.w),
                      IntakeWayCard(
                        inTakeMethod: InTakeMethod(
                            time: '아침', detailTime: '식전', intakeUnit: '1정'),
                      ),
                      IntakeWayCard(
                        inTakeMethod: InTakeMethod(
                            time: '점심', detailTime: '식후', intakeUnit: '1 포'),
                      ),
                      IntakeWayCard(
                        inTakeMethod: InTakeMethod(
                            time: '저녁', detailTime: '취침전', intakeUnit: '1정'),
                      ),
                    ],
                  ),
                ),
                const CustomDiver(),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 61.w,
                      padding: EdgeInsets.only(top: 24.w, right: 222.w),
                      child: Container(
                        width: 138.w,
                        height: 37.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.w),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: mainColor3,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '1일 섭취량당',
                              style: headerText4.copyWith(color: Colors.white),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              '함량',
                              style: bodyText2.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8.w),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '성분',
                                    style:
                                        bodyText2.copyWith(color: textColor1),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '함량',
                                    style:
                                        bodyText2.copyWith(color: mainColor3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8.w),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '성분',
                                    style:
                                        bodyText2.copyWith(color: textColor1),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '함량',
                                    style:
                                        bodyText2.copyWith(color: mainColor3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8.w),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '성분',
                                    style:
                                        bodyText2.copyWith(color: textColor1),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                SizedBox(
                                  width: 163.w,
                                  child: Text(
                                    '함량',
                                    style:
                                        bodyText2.copyWith(color: mainColor3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const CustomDiver(),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                  child: Column(
                    children: [
                      SizedBox(height: 16.w),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'asset/svg/pill.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text('영양 기능 정보', style: headerText3),
                        ],
                      ),
                      SizedBox(height: 4.w),
                      Text(
                        '국가별 기능성표기가 상이하여, 해외/국내 건강기능식품의 기능성 표기가 다를 수 있습니다.',
                        style: bodyText2.copyWith(color: textColor1),
                      ),
                      SizedBox(height: 16.w),
                      NutritionInformationCard(
                        nutritionInformation: NutritionInformation(
                            nutritionName: 'EPA DHA 함유유지',
                            description:
                                "- 혈중 중성지질개선\n- 혈행 개선에 도움을 줄 수 있음\n- 기억력 개선에 도움을 줄 수 있음\n- 건조한 눈을 개선하여 눈 건강에 도움을 줄 수 있음"),
                      ),
                      NutritionInformationCard(
                        nutritionInformation: NutritionInformation(
                            nutritionName: 'EPA DHA 함유유지',
                            description:
                                "- 혈중 중성지질개선\n- 혈행 개선에 도움을 줄 수 있음\n- 기억력 개선에 도움을 줄 수 있음\n- 건조한 눈을 개선하여 눈 건강에 도움을 줄 수 있음"),
                      ),
                    ],
                  ),
                ),
                const CustomDiver(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
                  child: Column(
                    children: [
                      SizedBox(height: 8.w),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'asset/svg/pill.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text('제품 특징', style: headerText3),
                        ],
                      ),
                      SizedBox(height: 8.w),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: mainColor1,
                        ),
                        child: Center(child: Text('DHA+EPA의 합 1,000mg 순도 80%', style: bodyText1,)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: mainColor1,
                        ),
                        child: Center(child: Text('DHA+EPA의 합 1,000mg 순도 80%', style: bodyText1,)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: mainColor1,
                        ),
                        child: Center(child: Text('DHA+EPA의 합 1,000mg 순도 80%', style: bodyText1,)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: mainColor1,
                        ),
                        child: Center(child: Text('DHA+EPA의 합 1,000mg 순도 80%', style: bodyText1,)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: mainColor1,
                        ),
                        child: Center(child: Text('DHA+EPA의 합 1,000mg 순도 80%', style: bodyText1,)),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
