// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hikmathub/constants/colors/colors.dart';
import 'package:hikmathub/core/cubit/responsive_navigation_bar/responsive_navigation_bar_cubit.dart';
import 'package:hikmathub/core/cubit/theme/theme_cubit.dart';
import 'package:hikmathub/presentation/auth/auth_intro.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/cubit/theme/theme_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Open Hive box for storing theme data
  await Hive.openBox('themeBox');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => ResponsiveNavigationBarCubit()),
      ],
      child: const MyApp(),
    ),
  );

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: state.maybeWhen(
                lightMode: () => AppColors.bar_color,
                darkMode: () => AppColors.rangsifatroq,
                orElse: () => AppColors.bar_color,
              ),
            ),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const Congratulation(),
          themeMode: state.maybeWhen(
            lightMode: () => ThemeMode.light,
            darkMode: () => ThemeMode.dark,
            orElse: () => ThemeMode.system,
          ),
        );
      },
    );
  }
}
