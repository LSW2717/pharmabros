// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_daily_intake_ingredient_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerDailyIntakeIngredientContent _$PerDailyIntakeIngredientContentFromJson(
        Map<String, dynamic> json) =>
    PerDailyIntakeIngredientContent(
      ingredientName: json['ingredient_name'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$PerDailyIntakeIngredientContentToJson(
        PerDailyIntakeIngredientContent instance) =>
    <String, dynamic>{
      'ingredient_name': instance.ingredientName,
      'content': instance.content,
    };
