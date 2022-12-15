import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_tracker/core/di/constants.dart';
import 'package:price_tracker/dark_mode/data/models/dark_mode.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'dark_mode_cubit.freezed.dart';
part 'dark_mode_cubit.g.dart';
part './dart_mode_state.dart';

class DarkModeCubit extends Cubit<DarkModeState> with HydratedMixin {

  DarkModeCubit() : super(
    const DarkModeState.light(
      payload: DarkModeStatePayload(
        darkMode: DarkMode(title: TITLE, brightness: Brightness.light),
      ),
    ),
  );

  Future<void> lightMode() async {
    emit(const DarkModeState.light(
      payload: DarkModeStatePayload(
        darkMode: DarkMode(title: TITLE_LIGHT, brightness: Brightness.light)
      )));
  }

  Future<void> darkMode() async {
    emit(
      const DarkModeState.dark(
        payload: DarkModeStatePayload(
          darkMode: DarkMode(title: TITLE_DARK, brightness: Brightness.dark)
        ))
    );
  }
  
  @override
  DarkModeState? fromJson(Map<String, dynamic> json) {
    return DarkModeState.fromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson(DarkModeState state) {
    return state.toJson();
  }

}