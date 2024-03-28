import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/top_headlines.dart';

part 'top_headlines_model.g.dart';

@JsonSerializable()
class TopHeadlinesModel extends TopHeadlines {
  const TopHeadlinesModel(
    super.author,
    super.title,
    super.description,
    super.url,
    super.urlToImage,
    super.content,
    super.publishedAt,
  );

  factory TopHeadlinesModel.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopHeadlinesModelToJson(this);
}
