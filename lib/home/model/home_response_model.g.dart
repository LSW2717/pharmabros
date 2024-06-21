// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadedHomeState _$LoadedHomeStateFromJson(Map<String, dynamic> json) =>
    LoadedHomeState(
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$LoadedHomeStateToJson(LoadedHomeState instance) =>
    <String, dynamic>{
      'product_list': instance.productList,
      'total_count': instance.totalCount,
    };
