import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final int id;
  @JsonKey(name: 'brand_name')
  final String brandName;

  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'is_purchase_available')
  final bool isPurchaseAvailable;

  @JsonKey(name: 'is_sold_out')
  final bool isSoldOut;

  @JsonKey(name: 'discount_product_percent')
  final int discountProductPercent;

  @JsonKey(name: 'buy_shop_link')
  final String buyShopLink;

  @JsonKey(name: 'is_domestic')
  final bool isDomestic;

  @JsonKey(name: 'pick_type')
  final String pickType;

  Product({
    required this.id,
    required this.brandName,
    required this.name,
    required this.imageUrl,
    required this.isPurchaseAvailable,
    required this.isSoldOut,
    required this.discountProductPercent,
    required this.buyShopLink,
    required this.isDomestic,
    required this.pickType,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
