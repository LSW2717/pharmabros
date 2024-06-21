import 'package:json_annotation/json_annotation.dart';
import 'package:pharmabros/home/model/product_model.dart';

part 'home_response_model.g.dart';

abstract class HomeState {
  const HomeState();
}

class LoadingHomeState extends HomeState {
  const LoadingHomeState();
}

class ErrorHomeState extends HomeState {
  final String errorMessage;

  const ErrorHomeState(this.errorMessage);
}

@JsonSerializable()
class LoadedHomeState extends HomeState {
  @JsonKey(name: 'product_list')
  final List<Product> productList;

  @JsonKey(name: 'total_count')
  final int totalCount;

  LoadedHomeState({
    required this.productList,
    required this.totalCount,
  });

  factory LoadedHomeState.fromJson(Map<String, dynamic> json) =>
      _$LoadedHomeStateFromJson(json);

  Map<String, dynamic> toJson() => _$LoadedHomeStateToJson(this);
}

class FetchingMoreHomeState extends LoadedHomeState {
  FetchingMoreHomeState({
    required super.productList,
    required super.totalCount,
  });
}
