import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors/colors.dart';
import '../../core/cubit/theme/theme_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
            lightMode: () => AppColors.body_color_kun,
            darkMode: () => AppColors.body_color_tun,
            orElse: () => AppColors.body_color_kun,
          ),
          expandedHeight: 140,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: AppColors.oq),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Notificationlar();
                //     },
                //   ),
                // );
              },
              iconSize: 30,
            ),
          ],

        ),
      ],
    );
  }
}
