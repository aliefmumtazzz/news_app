import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:news_app/feature/home/data/model/top_headlines_model.dart';

import '../../../../helper/json_reader.dart';

void main() {
  final tTopHeadlinesModel = TopHeadlinesModel(
    'author test',
    'title test',
    'description test',
    'url test',
    'urlToImage test',
    'content test',
    DateTime.parse('2024-03-27T00:44:44Z'),
  );

  group('FROM JSON', () {
    test(
      'should return a valid model from json',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(
          readJson('helper/json_response.json'),
        );

        // act
        final result = TopHeadlinesModel.fromJson(jsonMap);

        // assert
        expect(result, equals(tTopHeadlinesModel));
      },
    );
  });
}
