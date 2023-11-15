import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: text1(Colors.black, bold),
        ),
      ),
    );
  }
}
