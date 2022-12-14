import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dark_mode.freezed.dart';
part 'dark_mode.g.dart';

@freezed
abstract class DarkMode with _$DarkMode {

  const factory DarkMode ({
    required String? title,
    @JsonKey(fromJson: fromJson(json))
    required ThemeData theme
  }) = _DarkMode;

  factory DarkMode.fromJson(Map json) =>
    _$DarkModeFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));

}

ThemeData fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson(ThemeData object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }