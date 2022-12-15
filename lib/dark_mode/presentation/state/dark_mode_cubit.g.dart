// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_mode_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LightDarkModeState _$$_LightDarkModeStateFromJson(
        Map<String, dynamic> json) =>
    _$_LightDarkModeState(
      payload: DarkModeStatePayload.fromJson(
          json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LightDarkModeStateToJson(
        _$_LightDarkModeState instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'runtimeType': instance.$type,
    };

_$_DarkDarkModeState _$$_DarkDarkModeStateFromJson(Map<String, dynamic> json) =>
    _$_DarkDarkModeState(
      payload: DarkModeStatePayload.fromJson(
          json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DarkDarkModeStateToJson(
        _$_DarkDarkModeState instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'runtimeType': instance.$type,
    };

_$_DarkModeStatePayload _$$_DarkModeStatePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_DarkModeStatePayload(
      darkMode: json['darkMode'] == null
          ? null
          : DarkMode.fromJson(json['darkMode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DarkModeStatePayloadToJson(
        _$_DarkModeStatePayload instance) =>
    <String, dynamic>{
      'darkMode': instance.darkMode,
    };
