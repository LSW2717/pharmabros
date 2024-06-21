import 'package:dio/dio.dart';
import 'package:pharmabros/common/dio/dio.dart';
import 'package:pharmabros/detail/model/product_detail_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import '../../common/data/data.dart';
import '../../common/model/response_model.dart';


part 'product_detail_repository.g.dart';

@Riverpod(keepAlive: true)
ProductDetailRepository productDetailRepository(
    ProductDetailRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return ProductDetailRepository(dio, baseUrl: 'https://$ip/product');
}
@RestApi()
abstract class ProductDetailRepository{
  factory ProductDetailRepository(Dio dio, {String baseUrl}) = _ProductDetailRepository;

  @GET('/detail')
  Future<ResponseModel<ProductDetail>> getProductDetail(@Query('product_id') int id);

}
