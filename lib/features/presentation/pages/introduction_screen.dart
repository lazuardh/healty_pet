import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/routes/routes_name.dart';
import 'package:healtypet_application/features/presentation/utils/colors.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroductionScreenPages extends StatelessWidget {
  const IntroductionScreenPages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Konsultasi dengan Mudah",
          body:
              "kamu bisa menanyakan kesehatan hewan mu pada dokter dengan mudah.",
          image: SizedBox(
            width: size.width * 0.6,
            height: size.height * 0.6,
            child: Lottie.asset('assets/lottie/main-laptop-duduk.json'),
          ),
        ),
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: SizedBox(
            width: size.width * 0.6,
            height: size.height * 0.6,
            child: Lottie.asset('assets/lottie/ojek.json'),
          ),
        ),
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: SizedBox(
            width: size.width * 0.6,
            height: size.height * 0.6,
            child: Lottie.asset('assets/lottie/register.json'),
          ),
        )
      ],
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteName.loginScreen, (route) => false);
      },
      onSkip: () {},
      showSkipButton: true,
      skip: const Text("skip"),
      next: const Text("next"),
      done: Text(
        "done",
        style: text3(blackColor, bold),
      ),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        color: greyLight,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    ));
  }
}
