// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutritionInformation _$NutritionInformationFromJson(
        Map<String, dynamic> json) =>
    NutritionInformation(
      nutritionName: json['nutrition_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$NutritionInformationToJson(
        NutritionInformation instance) =>
    <String, dynamic>{
      'nutrition_name': instance.nutritionName,
      'description': instance.description,
    };
