// responsive_navigation_bar_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'responsive_navigation_bar_state.freezed.dart';

@freezed
class ResponsiveNavigationBarState with _$ResponsiveNavigationBarState {
  const factory ResponsiveNavigationBarState.initial() = _Initial;
  const factory ResponsiveNavigationBarState.bottomNavigationBarInitial(int currentIndex) = BottomNavigationBarInitial;

  int get currentIndex => when(
    initial: () => 0, // You can set a default value here
    bottomNavigationBarInitial: (currentIndex) => currentIndex,
  );

  // Add a private constructor
  const ResponsiveNavigationBarState._();
}

