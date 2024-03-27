import 'dart:convert';

import '../../../../core/error/exception.dart';
import '../../../../core/util/dio_service_util.dart';
import '../models/sport_model.dart';

abstract interface class SportRemoteDatasource {
  Future<List<SportModel>> getSports();
}

class SportRemoteDatasourceImpl implements SportRemoteDatasource {
  final BaseService _baseService;

  const SportRemoteDatasourceImpl(this._baseService);

  @override
  Future<List<SportModel>> getSports() async {
    try {
      const url = '/top-headlines';

      final result = await _baseService.dio.get(
        url,
        queryParameters: {
          'country': 'us',
          'pageSize': 30,
          'category': 'sport',
          'page': 1,
        },
      );

      final data = jsonDecode(result.data);

      return List<SportModel>.from(
        data['articles'].map((x) => SportModel.fromJson(x)),
      );
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
