// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedAuthStateImpl _$$AuthenticatedAuthStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedAuthStateImpl(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedAuthStateImplToJson(
        _$AuthenticatedAuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$InProcessAuthStateImpl _$$InProcessAuthStateImplFromJson(
        Map<String, dynamic> json) =>
    _$InProcessAuthStateImpl(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InProcessAuthStateImplToJson(
        _$InProcessAuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$NotAuthenticatedAuthStateImpl _$$NotAuthenticatedAuthStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NotAuthenticatedAuthStateImpl(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotAuthenticatedAuthStateImplToJson(
        _$NotAuthenticatedAuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$ErrorAuthStateImpl _$$ErrorAuthStateImplFromJson(Map<String, dynamic> json) =>
    _$ErrorAuthStateImpl(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String? ?? 'Произошла ошибка',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorAuthStateImplToJson(
        _$ErrorAuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$SuccessfulAuthStateImpl _$$SuccessfulAuthStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessfulAuthStateImpl(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessfulAuthStateImplToJson(
        _$SuccessfulAuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };
