import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hikmathub/constants/colors/colors.dart';
import 'package:hikmathub/presentation/home/home.dart';
import 'package:hikmathub/presentation/save/save.dart';
import 'package:hikmathub/presentation/settings/account.dart';
import 'package:hikmathub/presentation/settings/settings.dart';
import '../../core/cubit/responsive_navigation_bar/responsive_navigation_bar_cubit.dart';
import '../../core/cubit/responsive_navigation_bar/responsive_navigation_bar_state.dart';
import '../../core/cubit/theme/theme_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveNavigationBarCubit,
        ResponsiveNavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          body: Row(
            children: [
              Expanded(
                child: IndexedStack(
                  index: state.currentIndex,
                  children: const [
                    HomeScreen(),
                    SaveScreen(),
                    account(),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              color: context.watch<ThemeCubit>().state.maybeWhen(
                    lightMode: () => AppColors.bar_color,
                    darkMode: () => AppColors.rangsifatroq,
                    orElse: () => AppColors.bar_color,
                  ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: GNav(
                backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
                duration: const Duration(milliseconds: 100),

                color: AppColors.oq,
                activeColor: AppColors.oq,
                tabBackgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
                tabBorderRadius: 15,
                gap: 8,
                padding: const EdgeInsets.all(12),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Asosiy',
                    textStyle: GoogleFonts.akshar(color: AppColors.oq),
                  ),
                  GButton(
                    icon: Icons.library_books,
                    text: 'Online kutubxona',
                    textStyle: GoogleFonts.akshar(color: AppColors.oq),
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profil',
                    textStyle: GoogleFonts.akshar(color: AppColors.oq),
                  ),
                ],
                selectedIndex: state.currentIndex,
                // Fix the typo here
                onTabChange: (index) {
                  context
                      .read<ResponsiveNavigationBarCubit>()
                      .changeIndex(index);
                },
              ),
            ),
          ),
          backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
                lightMode: () => AppColors.body_color_kun,
                darkMode: () => AppColors.body_color_tun,
                orElse: () => AppColors.body_color_kun,
              ),
        );
      },
    );
  }
}
