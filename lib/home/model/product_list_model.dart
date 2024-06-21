import 'package:json_annotation/json_annotation.dart';
import 'package:pharmabros/home/model/product_model.dart';
part 'product_list_model.g.dart';

@JsonSerializable()
class ProductList {
  @JsonKey(name: 'product_list')
  final List<Product> productList;

  @JsonKey(name: 'total_count')
  final int totalCount;

  ProductList({
    required this.productList,
    required this.totalCount,
  });

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
  Map<String, dynamic> toJson() => _$ProductListToJson(this);
}