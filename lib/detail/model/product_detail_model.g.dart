// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    ProductDetail(
      id: (json['id'] as num).toInt(),
      productImageUrl: json['product_image_url'] as String,
      productBrandName: json['product_brand_name'] as String,
      productName: json['product_name'] as String,
      isDomestic: json['is_domestic'] as bool,
      isShowRecommendType: json['is_show_recommend_type'] as bool,
      recommendTypeName: json['recommend_type_name'] as String,
      recommendTypeNameColor: json['recommend_type_name_color'] as String,
      recommendContent: json['recommend_content'] as String,
      isShowPurchaseSection: json['is_show_purchase_section'] as bool,
      isSoldOut: json['is_sold_out'] as bool,
      isPurchaseAvailable: json['is_purchase_available'] as bool,
      originProductPrice: json['origin_product_price'] as String,
      discountProductPercent: (json['discount_product_percent'] as num).toInt(),
      discountProductPrice: json['discount_product_price'] as String,
      productSalesUrl: json['product_sales_url'] as String,
      perDailyIntakeCountText: json['per_daily_intake_count_text'] as String,
      perTimesIntakeAmountText: json['per_times_intake_amount_text'] as String,
      intakeMethod: (json['intake_method'] as List<dynamic>)
          .map((e) => InTakeMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      perDailyIntakeIngredientContent:
          (json['per_daily_intake_ingredient_content'] as List<dynamic>)
              .map((e) => PerDailyIntakeIngredientContent.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      ingredientsContent: json['ingredients_content'] as String,
      nutritionInformation: (json['nutrition_information'] as List<dynamic>)
          .map((e) => NutritionInformation.fromJson(e as Map<String, dynamic>))
          .toList(),
      productFeatures: (json['product_features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_image_url': instance.productImageUrl,
      'product_brand_name': instance.productBrandName,
      'product_name': instance.productName,
      'is_domestic': instance.isDomestic,
      'is_show_recommend_type': instance.isShowRecommendType,
      'recommend_type_name': instance.recommendTypeName,
      'recommend_type_name_color': instance.recommendTypeNameColor,
      'recommend_content': instance.recommendContent,
      'is_show_purchase_section': instance.isShowPurchaseSection,
      'is_sold_out': instance.isSoldOut,
      'is_purchase_available': instance.isPurchaseAvailable,
      'origin_product_price': instance.originProductPrice,
      'discount_product_percent': instance.discountProductPercent,
      'discount_product_price': instance.discountProductPrice,
      'product_sales_url': instance.productSalesUrl,
      'per_daily_intake_count_text': instance.perDailyIntakeCountText,
      'per_times_intake_amount_text': instance.perTimesIntakeAmountText,
      'intake_method': instance.intakeMethod,
      'per_daily_intake_ingredient_content':
          instance.perDailyIntakeIngredientContent,
      'ingredients_content': instance.ingredientsContent,
      'nutrition_information': instance.nutritionInformation,
      'product_features': instance.productFeatures,
    };
