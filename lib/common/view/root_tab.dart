import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmabros/common/layout/layout.dart';
import 'package:pharmabros/common/view_model/root_tab_view_model.dart';
import 'package:pharmabros/home/view/home_view.dart';
import 'package:pharmabros/mypage/view/mypage_view.dart';

class RootTab extends ConsumerWidget {
  const RootTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(tabIndexProvider);

    return Layout(
        title: _getTitleFromTabIndex(currentIndex),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            selectedFontSize: 12.sp,
            unselectedFontSize: 12.sp,
            type: BottomNavigationBarType.fixed,
            onTap: (index){
              ref.read(tabIndexProvider.notifier).setIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "asset/svg/home-default.svg",
                  width: 24.w,
                  height: 24.w,
                ),
                activeIcon: SvgPicture.asset(
                  "asset/svg/home-selected.svg",
                  width: 24.w,
                  height: 24.w,
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "asset/svg/my-default.svg",
                  width: 24.w,
                  height: 24.w,
                ),
                activeIcon: SvgPicture.asset(
                  "asset/svg/my-selected.svg",
                  width: 24.w,
                  height: 24.w,
                ),
                label: '내 정보',
              ),
            ],
          ),
        ),
        child: IndexedStack(
          index: currentIndex,
          children: const [
            HomeView(),
            MyPageView(),
          ],
        ));
  }
  String? _getTitleFromTabIndex(int index) {
    switch (index) {
      case 0:
        return '홈';
      case 1:
        return '내 정보';
      default:
        return null;
    }
  }
}
