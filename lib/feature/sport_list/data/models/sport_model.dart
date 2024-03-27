import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/sport.dart';

part 'sport_model.g.dart';

@JsonSerializable()
class SportModel extends Sport {
  SportModel(
    super.author,
    super.title,
    super.description,
    super.url,
    super.urlToImage,
    super.content,
    super.publishedAt,
  );

  factory SportModel.fromJson(Map<String, dynamic> json) =>
      _$SportModelFromJson(json);

  Map<String, dynamic> toJson() => _$SportModelToJson(this);
}
