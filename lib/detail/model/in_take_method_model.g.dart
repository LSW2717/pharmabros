// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_take_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InTakeMethod _$InTakeMethodFromJson(Map<String, dynamic> json) => InTakeMethod(
      time: json['time'] as String,
      detailTime: json['detail_time'] as String,
      intakeUnit: json['intake_unit'] as String,
    );

Map<String, dynamic> _$InTakeMethodToJson(InTakeMethod instance) =>
    <String, dynamic>{
      'time': instance.time,
      'detail_time': instance.detailTime,
      'intake_unit': instance.intakeUnit,
    };
