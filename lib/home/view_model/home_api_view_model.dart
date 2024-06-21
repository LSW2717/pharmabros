import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/home/model/product_model.dart';
import 'package:pharmabros/home/repository/home_repository.dart';
import 'package:pharmabros/home/view_model/home_search_text_view_model.dart';

import '../model/home_response_model.dart';

final homeApiProvider =
    StateNotifierProvider<HomeApiViewModel, HomeState>((ref) {
  final repository = ref.watch(homeRepositoryProvider);
  final controller = ScrollController();
  ref.onDispose(controller.dispose);
  return HomeApiViewModel(repository, controller, ref);
});

class HomeApiViewModel extends StateNotifier<HomeState> {
  final HomeRepository repository;
  final ScrollController controller;
  final Ref ref;
  int currentPage = 1;
  bool hasMore = true;
  bool isLoading = false;
  List<Product> contents = [];
  Timer? _throttle;

  HomeApiViewModel(
    this.repository,
    this.controller,
    this.ref,
  ) : super(const LoadingHomeState()) {
    _fetchThrottle();
    controller.addListener(_onScroll);
  }

  Future<void> searchProducts() async {
    if (!hasMore) {
      return;
    }
    if (state is LoadedHomeState) {
      final loadedState = state as LoadedHomeState;
      state = FetchingMoreHomeState(
          productList: loadedState.productList,
          totalCount: loadedState.totalCount);
      print(state);
    } else {
      state = const LoadingHomeState();
    }
    try {
      final text = ref.read(searchTextProvider);
      final newProducts = await repository.getSearchList(text, currentPage, 10);
      contents.addAll(newProducts.data.productList);
      final allProducts = LoadedHomeState(
          productList: contents, totalCount: newProducts.data.totalCount);
      print(state);
      state = allProducts;
      currentPage++;
      if (newProducts.data.productList.isEmpty) {
        hasMore = false;
      }
    } catch (e) {
      state = ErrorHomeState(e.toString());
      print(e.toString());
    }
    isLoading = false;
  }
  Future<void> search(String text) async {
    currentPage = 1;
    contents = [];
    state = const LoadingHomeState();
    try {
      final products = await repository.getSearchList(text, currentPage, 10);
      state = LoadedHomeState(productList: products.data.productList, totalCount: products.data.totalCount);
      hasMore = true;
    } catch (e) {
      state = ErrorHomeState(e.toString());
      print(e.toString());
    }

  }

  void _onScroll() {
    if (controller.position.pixels >= controller.position.maxScrollExtent &&
        hasMore &&
        !isLoading) {
      _fetchThrottle();
    }
  }

  void _fetchThrottle() {
    if (_throttle?.isActive ?? false) return;
    isLoading = true;
    _throttle = Timer(
        Duration(milliseconds: currentPage == 1 ? 0 : 100), searchProducts);
  }
}
