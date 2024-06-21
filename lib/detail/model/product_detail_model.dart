import 'package:json_annotation/json_annotation.dart';
import 'package:pharmabros/detail/model/nutrition_information_model.dart';
import 'package:pharmabros/detail/model/per_daily_intake_ingredient_content_model.dart';

import 'in_take_method_model.dart';

part 'product_detail_model.g.dart';

@JsonSerializable()
class ProductDetail {
  final int id;
  @JsonKey(name: 'product_image_url')
  final String productImageUrl;
  @JsonKey(name: 'product_brand_name')
  final String productBrandName;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'is_domestic')
  final bool isDomestic;
  @JsonKey(name: 'is_show_recommend_type')
  final bool isShowRecommendType;
  @JsonKey(name: 'recommend_type_name')
  final String recommendTypeName;
  @JsonKey(name: 'recommend_type_name_color')
  final String recommendTypeNameColor;
  @JsonKey(name: 'recommend_content')
  final String recommendContent;
  @JsonKey(name: 'is_show_purchase_section')
  final bool isShowPurchaseSection;
  @JsonKey(name: 'is_sold_out')
  final bool isSoldOut;
  @JsonKey(name: 'is_purchase_available')
  final bool isPurchaseAvailable;
  @JsonKey(name: 'origin_product_price')
  final String originProductPrice;
  @JsonKey(name: 'discount_product_percent')
  final int discountProductPercent;
  @JsonKey(name: 'discount_product_price')
  final String discountProductPrice;
  @JsonKey(name: 'product_sales_url')
  final String productSalesUrl;
  @JsonKey(name: 'per_daily_intake_count_text')
  final String perDailyIntakeCountText;
  @JsonKey(name: 'per_times_intake_amount_text')
  final String perTimesIntakeAmountText;
  @JsonKey(name: 'intake_method')
  final List<InTakeMethod> intakeMethod;
  @JsonKey(name: 'per_daily_intake_ingredient_content')
  final List<PerDailyIntakeIngredientContent> perDailyIntakeIngredientContent;
  @JsonKey(name: 'ingredients_content')
  final String ingredientsContent;
  @JsonKey(name: 'nutrition_information')
  final List<NutritionInformation> nutritionInformation;
  @JsonKey(name: 'product_features')
  final List<String> productFeatures;
  ProductDetail({
    required this.id,
    required this.productImageUrl,
    required this.productBrandName,
    required this.productName,
    required this.isDomestic,
    required this.isShowRecommendType,
    required this.recommendTypeName,
    required this.recommendTypeNameColor,
    required this.recommendContent,
    required this.isShowPurchaseSection,
    required this.isSoldOut,
    required this.isPurchaseAvailable,
    required this.originProductPrice,
    required this.discountProductPercent,
    required this.discountProductPrice,
    required this.productSalesUrl,
    required this.perDailyIntakeCountText,
    required this.perTimesIntakeAmountText,
    required this.intakeMethod,
    required this.perDailyIntakeIngredientContent,
    required this.ingredientsContent,
    required this.nutritionInformation,
    required this.productFeatures,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDetailToJson(this);
}