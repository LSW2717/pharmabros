import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/detail/repository/product_detail_repository.dart';

import '../model/product_detail_model.dart';

final productDetailApiProvider =
    StateNotifierProvider<ProductDetailApiViewModel, DetailState>((ref) {
      final repository = ref.watch(productDetailRepositoryProvider);
  return ProductDetailApiViewModel(repository);
});

class ProductDetailApiViewModel extends StateNotifier<DetailState> {
  final ProductDetailRepository repository;

  ProductDetailApiViewModel(this.repository) : super(const LoadingDetailState());

  Future<void> getProductDetail(int id) async {
    state = LoadingDetailState();
    try {
      final response = await repository.getProductDetail(id);
      state = LoadedDetailState(response.data);
    } catch (e) {
      state = ErrorDetailState(e.toString());
      print(e.toString());
    }
  }
}

abstract class DetailState {
  const DetailState();
}

class LoadingDetailState extends DetailState {
  const LoadingDetailState();
}

class ErrorDetailState extends DetailState {
  final String errorMessage;

  const ErrorDetailState(this.errorMessage);
}

class LoadedDetailState extends DetailState {
  final ProductDetail productDetail;

  const LoadedDetailState(this.productDetail);
}
