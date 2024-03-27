// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headlines_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopHeadlinesModel _$TopHeadlinesModelFromJson(Map<String, dynamic> json) =>
    TopHeadlinesModel(
      json['author'] as String?,
      json['title'] as String,
      json['description'] as String?,
      json['url'] as String?,
      json['urlToImage'] as String?,
      json['content'] as String?,
      json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      SourceModel.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopHeadlinesModelToJson(TopHeadlinesModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'source': instance.source,
    };

SourceModel _$SourceModelFromJson(Map<String, dynamic> json) => SourceModel(
      json['name'] as String?,
    );

Map<String, dynamic> _$SourceModelToJson(SourceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
