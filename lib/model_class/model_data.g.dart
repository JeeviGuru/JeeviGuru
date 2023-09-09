// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      userId: json['userId'] as int?,
      it: json['it'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'userId': instance.userId,
      'it': instance.it,
      'title': instance.title,
      'body': instance.body,
    };
