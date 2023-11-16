import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/build_button.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
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
                  Icons.person_2,
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
                labelText: 'Email',
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
          const SizedBox(height: 10),
          BuildButton(
            icon: const SizedBox(),
            label: "Register",
            textColor: accentColor,
            color: primaryColor,
            borderColor: transparent,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
