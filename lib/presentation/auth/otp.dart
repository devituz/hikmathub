import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hikmathub/constants/colors/colors.dart';
import 'package:hikmathub/presentation/responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 230),
              SizedBox(
                width: 366,
                height: 29,
                child: Text(
                  'Verification bot',
                  style: GoogleFonts.akshar(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: AppColors.otpqora,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 366,
                height: 48,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.akshar(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.005,
                      color: AppColors.otpqora1,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Telgram bot bergan 4xonali kodni kiriting.\n',
                      ),
                      TextSpan(
                          text: ' @HikmatHubBot',
                          style: GoogleFonts.akshar(
                            color: AppColors.otpqora1,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Material(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        length: 4,
                        controller: _controller,
                        defaultPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: GoogleFonts.akshar(
                            fontSize: 22,
                            color: AppColors.qora,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.boxdecoration),
                            color: AppColors.boxdecoration,
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: GoogleFonts.akshar(
                            fontSize: 22,
                            color: AppColors.qora,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.boxdecoration,
                            ),
                            color: AppColors.boxdecoration,
                          ),
                        ),
                        submittedPinTheme: PinTheme(
                          width: 52,
                          height: 48,
                          textStyle: const TextStyle(
                            fontSize: 22,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.boxdecoration,
                            ),
                            color: AppColors.boxdecoration,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: 366,
                height: 48,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.akshar(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                          text: 'Kod kelmadimi?  ',
                          style: GoogleFonts.akshar(color: AppColors.qora)),
                      TextSpan(
                        text: 'Bizga murojaat qiling',
                        style: GoogleFonts.akshar(
                          color: AppColors.bar_color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 230.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarWidget(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.bar_color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                  child: Text(
                    "Keyingisi",
                    style: GoogleFonts.akshar(
                      fontSize: 16,
                      color: AppColors.oq,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
