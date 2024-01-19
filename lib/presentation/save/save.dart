import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors/colors.dart';
import '../../core/cubit/theme/theme_cubit.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Center(
          child: Text("Saqlanganlar sahifa",
              style: GoogleFonts.akshar(fontSize: 18, color: AppColors.oq)),
        ),
      ),
      body: const Center(
        child: Text("Bu Saqlanganlar sahifa",
            style: TextStyle(color: AppColors.oq)),
      ),
      backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
            lightMode: () => AppColors.body_color_kun,
            darkMode: () => AppColors.body_color_tun,
            orElse: () => AppColors.body_color_kun,
          ),
    );
  }
}
