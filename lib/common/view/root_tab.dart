import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharmabros/common/layout/layout.dart';
import 'package:pharmabros/common/view_model/root_tab_view_model.dart';
import 'package:pharmabros/home/view/home_view.dart';
import 'package:pharmabros/mypage/view/mypage_view.dart';

import '../const/color.dart';

class RootTab extends ConsumerWidget {
  const RootTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(tabIndexProvider);

    return Layout(
      title: _getTitleFromTabIndex(currentIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
            color: diverColor,
            width: 1.0,
          )),
        ),
        child: BottomNavigationBar(
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          selectedLabelStyle: const TextStyle(
            color: textColor2,
            fontFamily: 'NotoSans',
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: const TextStyle(
            color: textColor3,
            fontFamily: 'NotoSans',
            fontWeight: FontWeight.w400,
          ),
          selectedItemColor: textColor2,
          unselectedItemColor: textColor3,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            ref.read(tabIndexProvider.notifier).setIndex(index);
          },
          currentIndex: currentIndex,
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
      ),
    );
  }

  String? _getTitleFromTabIndex(int index) {
    switch (index) {
      case 0:
        return null;
      case 1:
        return '내 정보';
      default:
        return null;
    }
  }
}
