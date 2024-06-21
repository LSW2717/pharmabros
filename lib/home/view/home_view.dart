import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/home/component/home_product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16.w),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: diverColor,
                ),
              ),
            ),
            child: Text(
              '검색 결과 nn건',
              style: bodyText1,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeProductCard(),
              HomeProductCard(),
              HomeProductCard(),
              HomeProductCard(),
              HomeProductCard(),
            ],
          ),
        ),
      ],
    );
  }
}
