// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportModel _$SportModelFromJson(Map<String, dynamic> json) => SportModel(
      json['author'] as String?,
      json['title'] as String,
      json['description'] as String?,
      json['url'] as String?,
      json['urlToImage'] as String?,
      json['content'] as String?,
      json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$SportModelToJson(SportModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };
