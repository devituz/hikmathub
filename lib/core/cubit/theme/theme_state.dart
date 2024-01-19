// theme_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.lightMode() = _LightMode;
  const factory ThemeState.darkMode() = _DarkMode;
}
