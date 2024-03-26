import 'dart:convert';

import '../../../../core/error/exception.dart';
import '../../../../core/util/dio_service_util.dart';
import '../model/top_headlines_model.dart';

abstract interface class HomeRemoteDataSource {
  Future<List<TopHeadlinesModel>> getTopHeadlines();
  Future<List<TopHeadlinesModel>> getExplore();
}

class HomeRemoteDateSourceImpl implements HomeRemoteDataSource {
  final BaseService _baseService;

  const HomeRemoteDateSourceImpl(this._baseService);

  @override
  Future<List<TopHeadlinesModel>> getTopHeadlines() async {
    try {
      const url = '/top-headlines';

      final result = await _baseService.dio.get(
        url,
        queryParameters: {
          'country': 'us',
          'pageSize': '10',
        },
      );

      final data = jsonDecode(result.data);

      return List<TopHeadlinesModel>.from(
        data['articles'].map((x) => TopHeadlinesModel.fromJson(x)),
      );
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<TopHeadlinesModel>> getExplore() async {
    try {
      const url = '/everything';

      final result = await _baseService.dio.get(
        url,
        queryParameters: {
          'country': 'us',
          'pageSize': '10',
        },
      );

      final data = jsonDecode(result.data);

      return List<TopHeadlinesModel>.from(
        data['articles'].map((x) => TopHeadlinesModel.fromJson(x)),
      );
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
