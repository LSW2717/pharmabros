import 'package:json_annotation/json_annotation.dart';

part 'nutrition_information_model.g.dart';

@JsonSerializable()
class NutritionInformation {
  @JsonKey(name: 'nutrition_name')
  final String nutritionName;

  final String description;

  NutritionInformation({
    required this.nutritionName,
    required this.description,
  });

  factory NutritionInformation.fromJson(Map<String, dynamic> json) =>
      _$NutritionInformationFromJson(json);

  Map<String, dynamic> toJson() => _$NutritionInformationToJson(this);
}
