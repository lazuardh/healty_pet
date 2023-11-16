import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/build_button.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: greyLight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: text3(greyMedium, regular),
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.email,
                  color: primaryColor,
                  size: 25,
                ),
                isCollapsed: false,
                isDense: true,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: greyLight),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: text3(greyMedium, regular),
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: primaryColor,
                  size: 25,
                ),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: primaryColor,
                  size: 25,
                ),
                isCollapsed: false,
                isDense: true,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                checkColor: accentColor,
                activeColor: primaryColor,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "remember me",
                style: text3(blackColor, regular),
              ),
              const SizedBox(width: 105),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password ? ",
                  style: text3(primaryColor, regular),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          BuildButton(
            icon: const SizedBox(),
            label: "Sign In",
            textColor: accentColor,
            color: primaryColor,
            borderColor: transparent,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Divider(),
                ),
                Text(
                  " Or login with ",
                  style: text2(greyMedium, regular),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildButton(
                icon: Image.asset(
                  "assets/logo/google_icon.png",
                  width: 25,
                  height: 25,
                ),
                label: " Google",
                textColor: blackColor,
                color: transparent,
                borderColor: greyLight,
                onTap: () {},
              ),
              BuildButton(
                icon: Image.asset(
                  "assets/logo/facebook.png",
                  width: 25,
                  height: 25,
                ),
                label: " Facebook",
                textColor: blackColor,
                color: transparent,
                borderColor: greyLight,
                onTap: () {},
              ),
              BuildButton(
                icon: Image.asset(
                  "assets/logo/facebook.png",
                  width: 25,
                  height: 25,
                ),
                label: " Facebook",
                textColor: blackColor,
                color: transparent,
                borderColor: greyLight,
                onTap: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
