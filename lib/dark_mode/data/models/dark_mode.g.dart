// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dark_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DarkMode _$$_DarkModeFromJson(Map<String, dynamic> json) => _$_DarkMode(
      title: json['title'] as String?,
      brightness: $enumDecodeNullable(_$BrightnessEnumMap, json['brightness']),
    );

Map<String, dynamic> _$$_DarkModeToJson(_$_DarkMode instance) =>
    <String, dynamic>{
      'title': instance.title,
      'brightness': _$BrightnessEnumMap[instance.brightness],
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
