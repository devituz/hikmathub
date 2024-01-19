// theme_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:hikmathub/core/cubit/theme/theme_state.dart';
import 'package:hive/hive.dart';

class ThemeCubit extends Cubit<ThemeState> {
  late Box themeBox;

  ThemeCubit() : super(const ThemeState.initial()) {
    _init();
  }

  Future<void> _init() async {
    await openThemeBox();
    retrieveAndApplyTheme();
  }

  Future<void> openThemeBox() async {
    themeBox = await Hive.openBox('themeBox');
  }

  Future<void> saveTheme(bool isDarkMode) async {
    await themeBox.put('isDarkMode', isDarkMode);
  }

  Future<void> retrieveAndApplyTheme() async {
    bool isDarkMode = themeBox.get('isDarkMode', defaultValue: false);
    if (isDarkMode) {
      toggleToDarkMode();
    } else {
      toggleToLightMode();
    }
  }

  void toggleToLightMode() {
    emit(const ThemeState.lightMode());
    saveTheme(false);
  }

  void toggleToDarkMode() {
    emit(const ThemeState.darkMode());
    saveTheme(true);
  }

  // New method to toggle between light and dark modes
  void toggleTheme() {
    state.maybeWhen(
      lightMode: () => toggleToDarkMode(),
      darkMode: () => toggleToLightMode(),
      orElse: () => toggleToLightMode(), // or toggleToDarkMode()
    );
  }
}
