import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/top_headlines.dart';

part 'top_headlines_model.g.dart';

@JsonSerializable()
class TopHeadlinesModel extends TopHeadlines {
  final SourceModel source;

  TopHeadlinesModel(
    super.author,
    super.title,
    super.description,
    super.url,
    super.urlToImage,
    super.content,
    super.publishedAt,
    this.source,
  );

  factory TopHeadlinesModel.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopHeadlinesModelToJson(this);
}

@JsonSerializable()
class SourceModel extends Source {
  SourceModel(super.name);

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}
