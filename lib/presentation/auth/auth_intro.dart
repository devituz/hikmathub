import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikmathub/constants/colors/colors.dart';
import 'package:hikmathub/presentation/auth/otp.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 300.0,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/auth/img.png'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Telegram bot bilan ro’yxatdan o’ting',
                    style: GoogleFonts.akshar(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: AppColors.qora,
                      height: 1.5,
                      letterSpacing: 0.005,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const otp(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.bar_color,
                      // Use backgroundColor instead of primary
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                      child: Text(
                        "Registrate",
                        style: GoogleFonts.akshar(
                            fontSize: 16, color: AppColors.oq),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
