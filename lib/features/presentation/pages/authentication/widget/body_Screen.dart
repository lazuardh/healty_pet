import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/pages/authentication/widget/form_login.dart';
import 'package:healtypet_application/features/presentation/pages/authentication/widget/form_register.dart';
import 'package:healtypet_application/features/presentation/utils/colors.dart';

import '../../../utils/text_style.dart';

class BodyAuthenticationScreen extends StatefulWidget {
  const BodyAuthenticationScreen({super.key});

  @override
  State<BodyAuthenticationScreen> createState() =>
      _BodyAuthenticationScreenState();
}

class _BodyAuthenticationScreenState extends State<BodyAuthenticationScreen> {
  int activeIndexPages = 0;

  List<String> activePages = ["Login", "Register"];
  List<Widget> loginOrRegisterPages = [FormLogin(), FormRegister()];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: primaryTransparent,
            borderRadius: BorderRadius.circular(40),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                activePages.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      activeIndexPages = index;
                    });
                  },
                  child: Container(
                    width: size.width * 0.4,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: activeIndexPages == index
                            ? accentColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        activePages[index],
                        style: text2(blackColor, regular),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: IndexedStack(
              index: activeIndexPages, children: loginOrRegisterPages),
        )
      ],
    );
  }
}
