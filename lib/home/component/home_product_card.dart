import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmabros/detail/view_model/product_detail_api_view_model.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class HomeProductCard extends ConsumerWidget {
  const HomeProductCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: (){
        ref.read(productDetailApiProvider.notifier).getProductDetail(25717);
        context.go('/detail');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16.w),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: diverColor1,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 90.w,
              height: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black12,
              ),
            ),
            SizedBox(width: 16.w),
            SizedBox(
              width: 222.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.w),
                  Text(
                    '브랜드',
                    style: bodyText2.copyWith(color: textColor1),
                  ),
                  SizedBox(height: 2.w),
                  Text(
                    '제품명 최대 두줄까지지',
                    style: bodyText1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 8.w),
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
          ],
        ),
      ),
    );
  }
}
