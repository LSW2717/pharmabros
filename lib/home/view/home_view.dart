import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';
import 'package:pharmabros/home/component/home_product_card.dart';
import 'package:pharmabros/home/model/home_response_model.dart';
import 'package:pharmabros/home/view/home_empty_view.dart';
import 'package:pharmabros/home/view_model/home_api_view_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeApiProvider);
    final controller = ref.watch(homeApiProvider.notifier).controller;
    if (homeState is LoadingHomeState){
      return const Center(child: CircularProgressIndicator(color: mainColor2,),);
    }
    if (homeState is ErrorHomeState){
      return const HomeEmptyView();
    }
    if (homeState is LoadedHomeState){
      final homeData = homeState.productList;
      return homeState.totalCount == 0 ? const HomeEmptyView() : CustomScrollView(
        controller: controller,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: diverColor1,
                  ),
                ),
              ),
              child: Text(
                '검색 결과 ${homeState.totalCount}건',
                style: bodyText1,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index == homeData.length &&
                    HomeState is FetchingMoreHomeState) {
                  return const CircularProgressIndicator(color: mainColor2);
                }
                return HomeProductCard(product: homeData[index]);
              },
              childCount: homeData.length + (HomeState is FetchingMoreHomeState ? 1 : 0),
            ),
          )
        ],
      );
    }
    else{
      return const HomeEmptyView();
    }
  }
}
