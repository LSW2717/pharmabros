import 'package:json_annotation/json_annotation.dart';

part 'in_take_method_model.g.dart';

@JsonSerializable()
class InTakeMethod {
  final String time;
  @JsonKey(name: 'detail_time')
  final String detailTime;
  @JsonKey(name: 'intake_unit')
  final String intakeUnit;

  InTakeMethod({
    required this.time,
    required this.detailTime,
    required this.intakeUnit,

  });

  factory InTakeMethod.fromJson(Map<String, dynamic> json) => _$InTakeMethodFromJson(json);
  Map<String, dynamic> toJson() => _$InTakeMethodToJson(this);
}