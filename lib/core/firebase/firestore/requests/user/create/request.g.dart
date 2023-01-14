// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCreateRequest _$$_UserCreateRequestFromJson(Map<String, dynamic> json) =>
    _$_UserCreateRequest(
      nickname: json['nickname'] as String,
      age: json['age'] as int,
      enthusiasm: json['enthusiasm'] as String,
      targetAbstinenceTime:
          DateTime.parse(json['targetAbstinenceTime'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$_UserCreateRequestToJson(
        _$_UserCreateRequest instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'age': instance.age,
      'enthusiasm': instance.enthusiasm,
      'targetAbstinenceTime': instance.targetAbstinenceTime.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
