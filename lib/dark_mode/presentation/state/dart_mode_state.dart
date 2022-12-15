part of 'dark_mode_cubit.dart';

@freezed
abstract class DarkModeState with _$DarkModeState {

  const factory DarkModeState.light({required DarkModeStatePayload payload}) =
    _LightDarkModeState;

  const factory DarkModeState.dark({required DarkModeStatePayload payload}) = 
    _DarkDarkModeState;

  factory DarkModeState.fromJson(Map json) => 
    _$DarkModeStateFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}

@freezed
abstract class DarkModeStatePayload with _$DarkModeStatePayload {
  const factory DarkModeStatePayload({
    required DarkMode? darkMode,
  }) = _DarkModeStatePayload;

  factory DarkModeStatePayload.fromJson(Map json) => 
    _$DarkModeStatePayloadFromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
