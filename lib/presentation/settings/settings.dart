import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikmathub/presentation/settings/profile.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/colors/colors.dart';
import '../../core/cubit/theme/theme_cubit.dart';
import '../../core/cubit/theme/theme_state.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text("Profil",
              style: GoogleFonts.akshar(fontSize: 18, color: AppColors.oq)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Profil(); // Yangi sahifani ochish
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 18.0),
                padding: const EdgeInsets.all(12.0),
                width: 380,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: context.watch<ThemeCubit>().state.maybeWhen(
                        lightMode: () => AppColors.bar_color,
                        darkMode: () => AppColors.rangsifatroq,
                        orElse: () => AppColors.bar_color,
                      ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 20.0, // Adjust the radius as needed
                        backgroundColor:
                            context.watch<ThemeCubit>().state.maybeWhen(
                                  lightMode: () => AppColors.bar_color,
                                  darkMode: () => AppColors.rangsifatroq,
                                  orElse: () => AppColors.bar_color,
                                ),

                        child: const Icon(
                            Icons.drive_file_rename_outline_outlined,
                            color: AppColors.oq),
                        // Replace with your image asset
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Profilni tahrirlash",
                              style: GoogleFonts.akshar(
                                  fontSize: 18, color: AppColors.oq)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 20.0, // Adjust the radius as needed
                      backgroundColor:
                          context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),

                      child: const Icon(Icons.translate, color: AppColors.oq),
                      // Replace with your image asset
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      const SizedBox(height: 12.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Ilova tilini o'zgartirish",
                          style: GoogleFonts.akshar(
                              fontSize: 18, color: AppColors.oq),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor:
                        context.watch<ThemeCubit>().state.maybeWhen(
                              lightMode: () => AppColors.bar_color,
                              darkMode: () => AppColors.rangsifatroq,
                              orElse: () => AppColors.bar_color,
                            ),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<ThemeCubit>(context).toggleTheme();
                      },
                      icon: BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            lightMode: () => const Icon(Icons.brightness_7,
                                color: AppColors.oq),
                            darkMode: () => const Icon(Icons.brightness_6,
                                color: AppColors.oq),
                            orElse: () => const Icon(Icons.brightness_auto,
                                color: AppColors.oq),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      const SizedBox(height: 12.0),
                      Text(
                        "Temani o'zgartirish",
                        style: GoogleFonts.akshar(
                            fontSize: 18, color: AppColors.oq),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 20.0, // Adjust the radius as needed
                      backgroundColor:
                          context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),

                      child: const Icon(Icons.share, color: AppColors.oq),
                      // Replace with your image asset
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {
                      String textToShare =
                          "Salom, barcha yangiliklar  Shohbozbek.uz da https://t.me/sssjohnson"; // Ulashmoqchi bo'lgan matn
                      Share.share(textToShare); // Matnni ulashish
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Do'stlarni taklif qilish",
                            style: GoogleFonts.akshar(
                                fontSize: 18, color: AppColors.oq),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 20.0, // Adjust the radius as needed
                      backgroundColor:
                          context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),

                      child: const Icon(Icons.message_rounded,
                          color: AppColors.oq),
                      // Replace with your image asset
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () async {
                      String? encodeQueryParameters(
                          Map<String, String> params) {
                        return params.entries
                            .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                            .join('&');
                      }

                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'shohbozbek.uz24@gmail.com',
                        query: encodeQueryParameters(<String, String>{
                          'subject': 'Bro nima gap',
                          'body': 'Salom',
                        }),
                      );

                      if (await canLaunchUrl(emailUri)) {
                        launchUrl(emailUri);
                      } else {
                        throw Exception('Could not launch $emailUri');
                      }
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 12.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Yordam",
                            style: GoogleFonts.akshar(
                                fontSize: 18, color: AppColors.oq),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 20.0, // Adjust the radius as needed
                      backgroundColor:
                          context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                      child:
                          const Icon(Icons.delete_outline, color: AppColors.oq),
                      // Replace with your image asset
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      const SizedBox(height: 12.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Hisobni o'chirish",
                          style: GoogleFonts.akshar(
                              fontSize: 18, color: AppColors.oq),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              padding: const EdgeInsets.all(12.0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.watch<ThemeCubit>().state.maybeWhen(
                      lightMode: () => AppColors.bar_color,
                      darkMode: () => AppColors.rangsifatroq,
                      orElse: () => AppColors.bar_color,
                    ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 20.0, // Adjust the radius as needed
                      backgroundColor:
                          context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),

                      child:
                          const Icon(Icons.login_outlined, color: AppColors.oq),
                      // Replace with your image asset
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Column(
                    children: [
                      const SizedBox(height: 12.0),
                      GestureDetector(
                        // onTap: () => logout(context),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Chiqish',
                            style: GoogleFonts.akshar(
                                fontSize: 18, color: AppColors.oq),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
            lightMode: () => AppColors.body_color_kun,
            darkMode: () => AppColors.body_color_tun,
            orElse: () => AppColors.body_color_kun,
          ),
    );
  }
}
