import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtypet_application/features/presentation/pages/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const IntroductionScreenPages(),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/Background_pet.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 42,
              ),
              Image.asset(
                'assets/logo/logo.png',
                height: 22,
              ),
              const SizedBox(
                height: 73,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Helping you\nto keep ",
                  style: GoogleFonts.manrope(
                      fontSize: 24,
                      color: const Color(0xFFDEE1FE),
                      letterSpacing: 3.5 / 100,
                      height: 152 / 100),
                  children: const [
                    TextSpan(
                        text: "your bestie",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800)),
                    TextSpan(text: "\nstay healthy!")
                  ],
                ),
              )
            ],
          )),
        )
      ]),
    );
  }
}
