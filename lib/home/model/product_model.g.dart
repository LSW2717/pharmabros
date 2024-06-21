// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      brandName: json['brand_name'] as String,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      isPurchaseAvailable: json['is_purchase_available'] as bool,
      isSoldOut: json['is_sold_out'] as bool,
      discountProductPercent: (json['discount_product_percent'] as num).toInt(),
      buyShopLink: json['buy_shop_link'] as String,
      isDomestic: json['is_domestic'] as bool,
      pickType: json['pick_type'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'brand_name': instance.brandName,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'is_purchase_available': instance.isPurchaseAvailable,
      'is_sold_out': instance.isSoldOut,
      'discount_product_percent': instance.discountProductPercent,
      'buy_shop_link': instance.buyShopLink,
      'is_domestic': instance.isDomestic,
      'pick_type': instance.pickType,
    };
