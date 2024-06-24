import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmabros/common/component/custom_diver.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/common/layout/layout.dart';
import 'package:pharmabros/detail/component/domestic_badge.dart';
import 'package:pharmabros/detail/component/intake_count_and_amount_card.dart';
import 'package:pharmabros/detail/component/intake_ingredient_content_card.dart';
import 'package:pharmabros/detail/component/intake_way_card.dart';
import 'package:pharmabros/detail/component/nutrition_information_card.dart';
import 'package:pharmabros/detail/component/pill_title.dart';
import 'package:pharmabros/detail/component/product_features_card.dart';
import 'package:pharmabros/detail/view_model/product_detail_api_view_model.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailView extends ConsumerWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailState = ref.watch(productDetailApiProvider);
    Widget content;
    if (detailState is LoadingDetailState) {
      content = const Center(
        child: CircularProgressIndicator(
          color: mainColor2,
        ),
      );
    }
    if (detailState is ErrorDetailState) {
      content = Center(
        child: Text(detailState.errorMessage),
      );
    }
    if (detailState is LoadedDetailState) {
      final detailData = detailState.productDetail;
      content = CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              // height: 382.w,
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
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: detailData.productImageUrl,
                    placeholder: (context, url) =>
                        Image.memory(kTransparentImage),
                    errorWidget: (context, url, error) => Container(
                      color: mainColor1,
                      child: const Center(
                        child: Icon(Icons.error),
                      ),
                    ),
                    fadeInDuration: const Duration(milliseconds: 100),
                    fit: BoxFit.cover,
                    width: 160.w,
                    height: 160.w,
                  ),
                  SizedBox(height: 32.w),
                  Text(
                    detailData.productBrandName,
                    style: bodyText1.copyWith(color: textColor1),
                  ),
                  SizedBox(height: 4.w),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: detailData.productName,
                          style: headerText2,
                        ),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              final String textToCopy = detailData.productName;
                              Clipboard.setData(ClipboardData(text: textToCopy));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '복사되었습니다.',
                                    style: bodyText2.copyWith(color: Colors.white),
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.w),
                  DomesticBadge(isDomestic: detailData.isDomestic),
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
                      const PillTitle(title: '섭취 용법'),
                      SizedBox(height: 16.w),
                      IntakeCountAndAmountCard(
                        perDailyIntakeCountText:
                            detailData.perDailyIntakeCountText,
                        perTimesIntakeAmountText:
                            detailData.perTimesIntakeAmountText,
                      ),
                    ],
                  ),
                ),
                detailData.intakeMethod.isEmpty ? const SizedBox.shrink() : Column(
                  children: [
                    const CustomDiver(),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.w),
                      child: Column(
                        children: [
                          const PillTitle(title: '섭취 방법'),
                          SizedBox(height: 4.w),
                          ...detailData.intakeMethod.map((data){
                            return IntakeWayCard(
                              inTakeMethod: data);
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
                detailData.perDailyIntakeIngredientContent.isEmpty ? const SizedBox.shrink() : Column(
                  children: [
                    const CustomDiver(),
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
                          ...detailData.perDailyIntakeIngredientContent.map((data){
                            return IntakeIngredientContentCard(intakeIngredientContent:data);
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
                detailData.nutritionInformation.isEmpty ? const SizedBox.shrink() : Column(
                  children: [
                    const CustomDiver(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                      child: Column(
                        children: [
                          SizedBox(height: 16.w),
                          const PillTitle(title: '영양 기능 정보'),
                          SizedBox(height: 4.w),
                          Text(
                            '국가별 기능성표기가 상이하여, 해외/국내 건강기능식품의 기능성 표기가 다를 수 있습니다.',
                            style: bodyText2.copyWith(color: textColor1),
                          ),
                          SizedBox(height: 16.w),
                          ...detailData.nutritionInformation.map((data){
                            return NutritionInformationCard(
                              nutritionInformation: data,
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
                detailData.productFeatures.isEmpty ? const SizedBox.shrink() : Column(
                  children: [
                    const CustomDiver(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16.w, horizontal: 16.w),
                      child: Column(
                        children: [
                          SizedBox(height: 8.w),
                          const PillTitle(title: '제품 특징'),
                          SizedBox(height: 8.w),
                          ...detailData.productFeatures.map((data){
                            return ProductFeaturesCard(productFeature: data,);
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      content = const SizedBox();
    }
    return Layout(
      needBackButton: true,
      centerTitle: true,
      title: '제품 정보',
      child: content,
    );
  }
}
