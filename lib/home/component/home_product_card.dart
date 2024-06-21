import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmabros/detail/component/domestic_badge.dart';
import 'package:pharmabros/detail/view_model/product_detail_api_view_model.dart';
import 'package:pharmabros/home/model/product_model.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../common/const/color.dart';
import '../../common/const/typography.dart';

class HomeProductCard extends ConsumerWidget {
  final Product product;

  const HomeProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(productDetailApiProvider.notifier).getProductDetail(product.id);
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
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
                width: 90.w,
                height: 90.w,
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
                    product.brandName,
                    style: bodyText2.copyWith(color: textColor1),
                  ),
                  SizedBox(height: 2.w),
                  Text(
                    product.name,
                    style: bodyText1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 8.w),
                  DomesticBadge(isDomestic: product.isDomestic),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
