import 'package:dio/dio.dart';
import 'package:pharmabros/common/data/data.dart';
import 'package:pharmabros/common/dio/dio.dart';
import 'package:pharmabros/home/model/home_response_model.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/model/response_model.dart';
part 'home_repository.g.dart';

@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return HomeRepository(dio, baseUrl: 'https://$ip/search');
}

@RestApi()
abstract class HomeRepository{
  factory HomeRepository(Dio dio, {String baseUrl}) = _HomeRepository;

  @GET('/product')
  Future<ResponseModel<LoadedHomeState>> getSearchList(
      @Query('target_word') String targetWord,
      @Query('page') int page,
      @Query('size') int size,
      );

}
