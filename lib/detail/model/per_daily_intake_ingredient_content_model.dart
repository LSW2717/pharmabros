import 'package:json_annotation/json_annotation.dart';

part 'per_daily_intake_ingredient_content_model.g.dart';

@JsonSerializable()
class PerDailyIntakeIngredientContent {
  @JsonKey(name: 'ingredient_name')
  final String ingredientName;
  final String content;

  PerDailyIntakeIngredientContent({
    required this.ingredientName,
    required this.content,
  });

  factory PerDailyIntakeIngredientContent.fromJson(Map<String, dynamic> json) => _$PerDailyIntakeIngredientContentFromJson(json);
  Map<String, dynamic> toJson() => _$PerDailyIntakeIngredientContentToJson(this);
}