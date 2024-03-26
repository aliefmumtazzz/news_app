import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../app_config.dart';

class BaseService {
  final Dio _dio;

  BaseService(this._dio);

  factory BaseService.create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.instance.baseUrl,
        connectTimeout: const Duration(minutes: 2),
        receiveTimeout: const Duration(minutes: 2),
        responseType: ResponseType.plain,
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ));
    }
    dio.interceptors.add(ApiKeyInterceptors());
    return BaseService(dio);
  }

  Dio get dio => _dio;
}

class ApiKeyInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';
    options.headers['Authorization'] = '${dotenv.env['NEWS_API_KEY']}';
    super.onRequest(options, handler);
  }
}
