// responsive_navigation_bar_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hikmathub/core/cubit/responsive_navigation_bar/responsive_navigation_bar_state.dart';


class ResponsiveNavigationBarCubit extends Cubit<ResponsiveNavigationBarState> {
  ResponsiveNavigationBarCubit() : super(const ResponsiveNavigationBarState.initial());

  void changeIndex(int newIndex) {
    emit(ResponsiveNavigationBarState.bottomNavigationBarInitial(newIndex));
  }
}
