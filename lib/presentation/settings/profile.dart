import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../constants/colors/colors.dart';
import '../../core/cubit/theme/theme_cubit.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
    mask: '#### (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9+]')},
  );

  TextEditingController _eskiParol = TextEditingController();
  bool _iseskiParol = false;

  TextEditingController _yangiParol = TextEditingController();
  bool _isyangiParol = false;

  TextEditingController _yangiParolniTakrorlash = TextEditingController();
  bool _isyangiParolniTakrorlash = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text(
            "Profil haqida ma'leumot",
            style: GoogleFonts.akshar(color: AppColors.oq,fontSize: 20),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.oq,size: 22.0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: context.watch<ThemeCubit>().state.maybeWhen(
            lightMode: () => AppColors.body_color_kun,
            darkMode: () => AppColors.body_color_tun,
            orElse: () => AppColors.body_color_kun,
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundColor: AppColors.oq,
                backgroundImage: AssetImage('assets/user_logo/img.png'),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                                //efef
                              ),
                          hintText: 'Shohbozbek',
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: AppColors.oq,
                          ),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: 'Turgunov',
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: AppColors.oq,
                          ),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        style: const TextStyle(color: AppColors.oq),
                        inputFormatters: [phoneNumberFormatter],
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: '+998 (97) 171-24-02',
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          prefixIcon: const Icon(Icons.call, color: AppColors.oq),
                          filled: true,
                          prefixStyle: const TextStyle(fontSize: 15.0),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: "shohbozbek.uz24@gmail.com",
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          prefixIcon:
                              const Icon(Icons.email, color: AppColors.oq),
                          filled: true,
                          prefixStyle: const TextStyle(fontSize: 15.0),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        controller: _eskiParol,
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: "Eski parolingiz",
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          prefixIcon: const Icon(Icons.password_outlined,
                              color: AppColors.oq),
                          filled: true,
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _iseskiParol
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.oq,
                            ),
                            onPressed: () {
                              setState(() {
                                _iseskiParol = !_iseskiParol;
                              });
                            },
                          ),
                        ),
                        obscureText: !_iseskiParol,
                        keyboardType: TextInputType.text,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        controller: _yangiParol,
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: "Yangi parolngiz",
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          prefixIcon: const Icon(Icons.password_outlined,
                              color: AppColors.oq),
                          filled: true,
                          prefixStyle: const TextStyle(fontSize: 15.0),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isyangiParol
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.oq,
                            ),
                            onPressed: () {
                              setState(() {
                                _isyangiParol = !_isyangiParol;
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: !_isyangiParol,
                        // maxLength: 13,
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 55.0,
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: TextField(
                        controller: _yangiParolniTakrorlash,
                        style: const TextStyle(color: AppColors.oq),
                        decoration: InputDecoration(
                          fillColor: context.watch<ThemeCubit>().state.maybeWhen(
                                lightMode: () => AppColors.bar_color,
                                darkMode: () => AppColors.rangsifatroq,
                                orElse: () => AppColors.bar_color,
                              ),
                          hintText: "Parolni takrorlang",
                          hintStyle: GoogleFonts.akshar(
                            color: AppColors.oq,
                          ),
                          prefixIcon: const Icon(Icons.password_outlined,
                              color: AppColors.oq),
                          filled: true,
                          prefixStyle: const TextStyle(fontSize: 15.0),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isyangiParolniTakrorlash
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.oq,
                            ),
                            onPressed: () {
                              setState(() {
                                _isyangiParolniTakrorlash =
                                    !_isyangiParolniTakrorlash;
                              });
                            },
                          ),
                        ),
                        obscureText: !_isyangiParolniTakrorlash,
                        keyboardType: TextInputType.text,
                        // maxLength: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            context.watch<ThemeCubit>().state.maybeWhen(
                                  lightMode: () => AppColors.bar_color,
                                  darkMode: () => AppColors.rangsifatroq,
                                  orElse: () => AppColors.bar_color,
                                ),
                        // Use backgroundColor instead of primary
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 100),
                        child: Text(
                          "Saqlash",
                          style: GoogleFonts.akshar(
                              fontSize: 13, color: const Color(0xFFFEFEFE)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
