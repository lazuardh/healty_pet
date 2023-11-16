import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/pages/authentication/widget/body_Screen.dart';
import 'package:healtypet_application/features/presentation/utils/colors.dart';

import '../../utils/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/logo.png",
              width: 25,
              height: 25,
            ),
            const SizedBox(width: 5),
            Text(
              "HealtyPet",
              style: text2(accentColor, regular),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: primaryColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Go Ahead and set up \nyour account",
                  style: heading5(accentColor, bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                child: Text(
                  "Sign in-up to enjoy the best managing experience",
                  style: text3(accentColor, regular),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.75,
            minChildSize: 0.5,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: BodyAuthenticationScreen(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
