import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app/core/util/dio_service_util.dart';
import 'package:news_app/feature/home/data/datasource/home_remote_datasource.dart';
import 'package:news_app/feature/home/data/model/top_headlines_model.dart';

import '../../../../helper/json_reader.dart';

class MockBaseService extends Mock implements BaseService {}

void main() {
  late HomeRemoteDateSourceImpl homeRemoteDatasourceImpl;
  late MockBaseService mockBaseService;

  setUp(() {
    mockBaseService = MockBaseService();
    homeRemoteDatasourceImpl = HomeRemoteDateSourceImpl(mockBaseService);
  });

  void setUpMockBaseServiceSuccess200() {
    when(mockBaseService.dio.get('/top-headlines')).thenAnswer(
      (realInvocation) async => Response(
        requestOptions: RequestOptions(),
        data: readJson('helper/json_response.json'),
      ),
    );
  }

  group('get top-headlines', () {
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helper/json_response.json'),
    );

    test(
      'should can get top-headlines',
      () async {
        // arrange
        setUpMockBaseServiceSuccess200();

        // act
        final result = await homeRemoteDatasourceImpl.getTopHeadlines(
          category: 'general',
          pageSize: 10,
        );

        // assert
        expect(result, TopHeadlinesModel.fromJson(jsonMap));
      },
    );
  });
}
